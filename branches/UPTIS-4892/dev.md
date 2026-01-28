# Juhend arendajale - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* **Juhend arendajale**

## Juhend arendajale

Antud juhend selgitab põhireeglid HCERT andmete pärimiseks ja sõnumite koostamiseks.

Testimiseks laadige alla Postman [kollektsiooni](HCERT%20X-Road.postman_collection.json) näidetega. Postman kollektsioonis on ka mõned juhised ja muutujate selgitused.

Mõned olulisemad muutujad:

| | | |
| :--- | :--- | :--- |
| X_ROAD_SERVER_URL | Oma x-tee turvaseveris aadress | https://10.0.10.10 |
| X_ROAD_ENV | x-tee keskkond | ee-test |
| X_ROAD_CLIENT | Oma x-tee klient, näiteks | GOV/70009770/tto-tis-klient |

### Ligipääsud

> Kollektsiooni proovimiseks klient peab tellima õigused X-tee teenustele**GOV/70009770/tis/fhir**ja**GOV/70009770/tis/auth**ee-test keskkonnas (kliendile mis on määratud X_ROAD_CLIENT muutujaga).

### Autoriseerimine

Autoriseerimine on protsess, mille käigus kasutaja saab õigusi/privileege teatud ressursidele. Autoriseerimise käigus valideeritakse kasutaja väidetav roll ning kuuluvus asutusele, mille alt tehakse päringuid.

**Token-is kodeeritud kasutaja isikukood ja nimi kasutatakse audit logides, mis kuvatakse ka patsiendile Andmejälgijas!**

#### Tokeni pärimine

Postman kollektsioonis "… token …" päringud AUTH teenuse pihta.

Näiteks arsti autoriseerimise päring: POST `/v2/token` järgmise "application/json" sisuga

```
{
  "user": {
    "personalCode": "49909090014"
  },
  "organization": "70009770",
  "role": "doctor",
  "application": "tto-tis-client-application"
}

```

Päringu kehas tuleb määrata kasutja roll, isikukood ja oma asutuse kood. Antud kombinatsioon valideeritakse erinevate registrite vastu. Token-i küsimusel rakenduse nimi ("application" väli) peab kajastama kasutatud tarkvara, suvaline tekst ilma tühikudeta.

Vastus:

```
{
  "accessToken": "eyJhbGciOiJSUz...",
  "expiresIn": 300,
  "tokenType": "Bearer"
}

```

**Autoriseerimise detailne juhend on leitav[teabekeskusest](https://teabekeskus.tehik.ee/et/teenused/tis-teenused/tis-andmevahetus/autoriseerimise-teenus).**

#### Tokeni cache-mine

Tokeni eluiga on on N sekundit (token päringu vastuses väli expiresIn), kliendirakendus võib tokeni cache-da kuni N sekundit ja taaskasutada erinevates päringutes. **NB! Token on kasutajapõhine, kliendirakendus ei tohi jagada sama tokeni mitme erineva kasutaja vahel!**

#### Tokeni kasutamine

Tokeni tuleb kasutatada `Authorization` päises `Bearer` prefiksiga. Näiteks

```
Authorization: Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiA....

```

#### API otspunkti õigused

Iga FHIR API otspunkt kontrollib õigusi, mis on rollipõhised. Rollide kohta saab lugeda [siin](https://teabekeskus.tehik.ee/et/teenused/tis-teenused/tis-andmevahetus/autoriseerimise-teenuse-kasutajate-rollid). Õiguste maatriks asub [siin](permissions.md).

### Päised (HTTP headers)

Igas päringus tuleb määrata REST päringu päises mitmed tunnused:

| | | |
| :--- | :--- | :--- |
| Accept | application/json või application/xml või application/fhir+json või application/fhir+xml |   |
| Content-Type | application/json või application/xml või application/fhir+json või application/fhir+xml |   |
| Authorization | Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiA…. | Auth teenuse poolt saadud token |
| x-road-id |   | Unikaalne päringu id |
| x-road-issue |   | Tekstiline selgitus miks antud päring on tehtud, teatud päringutel on kohustuslik.Tekst kuvatakse Andmejälgijas. Päis edastatakse alampäringute puhul teistesse süsteemidesse. |
| x-road-client | Sama mis X_ROAD_CLIENT muutuja väärtus | X-tee rest kliendi määrav identifikaator, vt https://www.x-tee.ee/docs/live/xroad/pr-rest_x-road_message_protocol_for_rest.html#43-use-of-http-headers |

### API

Vaata [API kirjeldust](api.md).

### Aeg ja ajatsoon

Ressurside vastuvõtmisel HCERT FHIR liides toetab ajad erinevates ajatsoonides, näiteks UTC `1974-12-25T23:00:00Z` või offset'iga `1974-12-26T01:00:00+02:00`. Vaata formaati [spetsifikatsioonist](http://hl7.org/fhir/datatypes.html#dateTime). Kui ajatsooni offset pole määratud, näiteks **date** tüüpi puhul, siis arvestatakse et aeg on Eesti ajatsoonis ehk `Europe/Tallinn`. FHIR vastuses olevad ajad on alati toodud Eesti ajatsoonis.

