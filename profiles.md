# Profiilid - Tervisetõendi teenus (HCERT) v1.0.0

* [**Table of Contents**](toc.md)
* **Profiilid**

## Profiilid

### Profiilide struktuur

Baasprofiil **[EEHealthCertificate](StructureDefinition-ee-health-certificate.md)** baseerub FHIR [Composition](https://hl7.org/fhir/composition.html) ressursil ja on päritud erinevate spetsiifilisemate profiilide poolt. Baasprofiil loetleb ühised reeglid ja määrab ressursi struktuuri kõikide sertifikaati tüüpide kohta.

```
graph TD
    EEHealthCertificate -->|päritud| EEHealthCertificateOccupational
    EEHealthCertificate -->|päritud| EEHealthCertificateDriver
    EEHealthCertificateOccupational -->|Tööandjale| EEHealthCertificateOccupationalEmployer

```

### Töötervishoiu tervisekontrolli otsus

**[EEHealthCertificateOccupational](StructureDefinition-ee-health-certificate-occupational.md)** on tervishoiu tervisekontrolli otsuste baasprofiil. Mõeldud spetsialistidele (sh arstidele) ja töötajale andmete kuvamiseks. Selle alamprofiil [EEHealthCertificateOccupationalEmployer](StructureDefinition-ee-health-certificate-occupational-employer.md) on mõeldud tööandjale andmete väljastamiseks.

### Mootorsõidukijuhi tervisetõend

**[EEHealthCertificateDriver](StructureDefinition-ee-health-certificate-driver.md)** on mootorsõidukijuhi tervisetõendi profiil.

