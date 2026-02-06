<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile EEHealthCertificateOccupational
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Composition/f:contained</sch:title>
    <sch:rule context="f:Composition/f:contained">
      <sch:assert test="count(f:implicitRules) &lt;= 1">implicitRules: maximum cardinality of 'implicitRules' is 1</sch:assert>
      <sch:assert test="count(f:instantiates[x]) &lt;= 1">instantiates[x]: maximum cardinality of 'instantiates[x]' is 1</sch:assert>
      <sch:assert test="count(f:category) &gt;= 1">category: minimum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:subject) &lt;= 1">subject: maximum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &gt;= 1">effective[x]: minimum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:effective[x]) &lt;= 1">effective[x]: maximum cardinality of 'effective[x]' is 1</sch:assert>
      <sch:assert test="count(f:issued) &lt;= 1">issued: maximum cardinality of 'issued' is 1</sch:assert>
      <sch:assert test="count(f:performer) &lt;= 1">performer: maximum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:dataAbsentReason) &lt;= 1">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 1</sch:assert>
      <sch:assert test="count(f:hasMember) &lt;= 0">hasMember: maximum cardinality of 'hasMember' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Composition/f:section</sch:title>
    <sch:rule context="f:Composition/f:section">
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:entry) &gt;= 1">entry: minimum cardinality of 'entry' is 1</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 1">entry: maximum cardinality of 'entry' is 1</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:entry) &gt;= 1">entry: minimum cardinality of 'entry' is 1</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 1">entry: maximum cardinality of 'entry' is 1</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 0">entry: maximum cardinality of 'entry' is 0</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:entry) &gt;= 1">entry: minimum cardinality of 'entry' is 1</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:entry) &gt;= 1">entry: minimum cardinality of 'entry' is 1</sch:assert>
      <sch:assert test="count(f:entry) &lt;= 1">entry: maximum cardinality of 'entry' is 1</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:entry) &gt;= 1">entry: minimum cardinality of 'entry' is 1</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
