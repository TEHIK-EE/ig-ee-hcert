ValueSet: EEHealthCertificateStatusVS
Title: "Tervisetõendi staatus"
Description: "Staatuste loend millega opereerib HCERT teenus"
Id: ee-health-certificate-status
* ^experimental = false
* include StatusCS#preliminary
  * ^designation[0].language = #et
  * ^designation[0].value = "Mustand"
* include StatusCS#final
  * ^designation[0].language = #et
  * ^designation[0].value = "Lõpetatud"
* include StatusCS#cancelled
  * ^designation[0].language = #et
  * ^designation[0].value = "Peatatud"
* include StatusCS#entered-in-error
  * ^designation[0].language = #et
  * ^designation[0].value = "Tühistatud"


ValueSet: EEHealthCertificateDriverCategoryVS
Title: "Mootosõidukijuhi tervisetõend kasutusala"
Description: "Tervisetõend kasutusala mis on mõeldud kasutamiseks mootosõidukijuhi tervisetõendis"
Id: ee-health-certificate-driver-category
* ^experimental = false
* include $HDC#driver-group-I
* include $HDC#driver-group-II
