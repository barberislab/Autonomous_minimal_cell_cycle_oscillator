<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.25 (Build 207) (http://www.copasi.org) at 2019-07-05T10:59:00Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="25" versionDevel="207" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:45:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="mass_action_qss_cyclin_activation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T14:37:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*f*S
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="f" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="S" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="mass_action_qss_self_activation" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T14:40:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*f*P
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="f" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="P" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="mass_action_qss_sic1_degr" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T14:41:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*s_free
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="s_free" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="mass_action_qss_cyclin_degr" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T14:42:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*f*S
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="f" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="S" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="mass_action_qss_cyclin_inhibition" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T14:45:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*f^2*S*M
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="f" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="S" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_274" name="M" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="mass_action_qss_sic1_degr_ternary_complex" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T14:51:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (k1)*(1-f)*S*(f*M1+f*M2+f*M3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="f" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="M1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_275" name="M2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_279" name="M3" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="S" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="mass_action_qss_clb_degr_ternary_complex" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T14:58:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        k*(1-f)*M
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="k" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="f" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="M" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Mondeel2017_2_3" simulationType="time" timeUnit="s" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:16:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>d.g.a.mondeel@uva.nl</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Mondeel</vCard:Family>
                <vCard:Given>Thierry</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Amsterdam</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:16:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="internal" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:17:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Clb5" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:17:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Clb3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T20:09:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Clb2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-19T17:08:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Sic1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T22:28:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:23:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="e" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:28:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T21:25:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="s" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-19T17:09:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          -(1/&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[K_A],Reference=Value>+&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb5],Reference=Concentration>+&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb3],Reference=Concentration>+&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb2],Reference=Concentration>-&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Sic1],Reference=Concentration>)/2+sqrt(((1/&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[K_A],Reference=Value>+(&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb5],Reference=Concentration>+&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb3],Reference=Concentration>+&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb2],Reference=Concentration>)-&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Sic1],Reference=Concentration>)/2)^2+&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Sic1],Reference=Concentration>/&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[K_A],Reference=Value>)
        </Expression>
        <Unit>
          nmol
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="K_A" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-19T17:10:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="f" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-19T17:11:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1/(1+&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[s],Reference=Value>*&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[K_A],Reference=Value>)
        </Expression>
        <Unit>
          1
        </Unit>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Clb5_free" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T16:38:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=Value>*&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb5],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Clb5-Sic1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T16:38:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1-&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=Value>)*&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb5],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Clb3_free" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T16:40:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=Value>*&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb3],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="Clb3-Sic1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T16:41:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1-&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=Value>)*&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb3],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Clb2_free" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T16:41:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=Value>*&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb2],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Clb2-Sic1" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T16:42:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (1-&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=Value>)*&lt;CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb2],Reference=Concentration>
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="v_x" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:19:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5009" name="v" value="0.08942"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_5009"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="v_y" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:18:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5008" name="v" value="0.01004"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_5008"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="v_z" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:19:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5007" name="v" value="0.00101"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_5007"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="v_s" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:21:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="v" value="0.1374"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_5006"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="b_x" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:22:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="k" value="1"/>
          <Constant key="Parameter_5004" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="b_y" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:22:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5003" name="k" value="1"/>
          <Constant key="Parameter_5002" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="b_z" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:23:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="k" value="1"/>
          <Constant key="Parameter_5000" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="b_s" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:24:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="k" value="0.0005"/>
          <Constant key="Parameter_4998" name="s_free" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Parameter_4999"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="a_xz" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:39:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="k" value="0.1"/>
          <Constant key="Parameter_4996" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4997"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="a_yy" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:40:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="k" value="0.1"/>
          <Constant key="Parameter_4994" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_4995"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="a_yz" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:42:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4993" name="k" value="1"/>
          <Constant key="Parameter_4992" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4993"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="a_zz" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T19:47:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="k" value="0.1"/>
          <Constant key="Parameter_4990" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_4991"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="g_zx" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T21:27:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4989" name="k" value="0.7"/>
          <Constant key="Parameter_4988" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_4989"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="g_zy" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T21:28:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4987" name="k" value="0.7"/>
          <Constant key="Parameter_4986" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_4987"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="g_zz" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T21:28:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4985" name="k" value="0.7"/>
          <Constant key="Parameter_4984" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_4985"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="g_yy" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T21:32:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4983" name="k" value="0.7"/>
          <Constant key="Parameter_4982" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_4983"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="g_yx" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-07-08T21:33:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4981" name="k" value="0.7"/>
          <Constant key="Parameter_4980" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_4981"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="a_xy" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-19T16:29:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4979" name="k" value="1"/>
          <Constant key="Parameter_4978" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4979"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="d_x" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T14:50:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4977" name="k1" value="0.04"/>
          <Constant key="Parameter_4976" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="e_x" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T15:00:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4975" name="k" value="0.005"/>
          <Constant key="Parameter_4974" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="e_y" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T15:01:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4973" name="k" value="0.005"/>
          <Constant key="Parameter_4972" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="e_z" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T15:01:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4971" name="k" value="0.005"/>
          <Constant key="Parameter_4970" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="d_z" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T16:29:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4969" name="k1" value="0.04"/>
          <Constant key="Parameter_4968" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="d_y" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-20T16:27:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4967" name="k1" value="0.04"/>
          <Constant key="Parameter_4966" name="f" value="0.00497512"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_1">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-05T10:58:52Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Sic1]" value="3.0110708950000012e+21" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[b]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[e]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[d]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[s]" value="5.0000000000000018" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[K_A]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[f]" value="0.0049751243781094509" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb5_free]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb5-Sic1]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb3_free]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb3-Sic1]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb2_free]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb2-Sic1]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_x],ParameterGroup=Parameters,Parameter=v" value="0.089419999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_y],ParameterGroup=Parameters,Parameter=v" value="0.01004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_z],ParameterGroup=Parameters,Parameter=v" value="0.00101" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_s]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_s],ParameterGroup=Parameters,Parameter=v" value="0.13739999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_x],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_x],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_y],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_y],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_z],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_z],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s],ParameterGroup=Parameters,Parameter=k" value="0.00050000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s],ParameterGroup=Parameters,Parameter=s_free" value="5.0000000000000018" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[s],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_x],ParameterGroup=Parameters,Parameter=k1" value="0.040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_x],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_x],ParameterGroup=Parameters,Parameter=k" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_x],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_y],ParameterGroup=Parameters,Parameter=k" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_y],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_z],ParameterGroup=Parameters,Parameter=k" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_z],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_z],ParameterGroup=Parameters,Parameter=k1" value="0.040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_z],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_y],ParameterGroup=Parameters,Parameter=k1" value="0.040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_y],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_3" name="model_1_LC_1_KA=40_vs=0.3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-09T10:55:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Sic1]" value="3.0110708950000012e+21" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[b]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[e]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[d]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[s]" value="5.0000000000000018" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[K_A]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[f]" value="0.0049751243781094509" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb5_free]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb5-Sic1]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb3_free]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb3-Sic1]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb2_free]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb2-Sic1]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_x],ParameterGroup=Parameters,Parameter=v" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_y],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_z],ParameterGroup=Parameters,Parameter=v" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_s]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_s],ParameterGroup=Parameters,Parameter=v" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_x],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_x],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_y],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_y],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_z],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_z],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s],ParameterGroup=Parameters,Parameter=k" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s],ParameterGroup=Parameters,Parameter=s_free" value="5.0000000000000018" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[s],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_x],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_x],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_x],ParameterGroup=Parameters,Parameter=k" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_x],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_y],ParameterGroup=Parameters,Parameter=k" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_y],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_z],ParameterGroup=Parameters,Parameter=k" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_z],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_z],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_z],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_y],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_y],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_4" name="LC_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-08T20:59:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Sic1]" value="3.0110708950000012e+21" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[b]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[e]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[d]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[s]" value="5.0000000000000018" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[K_A]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[f]" value="0.0049751243781094509" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb5_free]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb5-Sic1]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb3_free]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb3-Sic1]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb2_free]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb2-Sic1]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_x],ParameterGroup=Parameters,Parameter=v" value="0.089419999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_y],ParameterGroup=Parameters,Parameter=v" value="0.01004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_z],ParameterGroup=Parameters,Parameter=v" value="0.00101" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_s]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_s],ParameterGroup=Parameters,Parameter=v" value="0.13739999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_x],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_x],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_y],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_y],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_z],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_z],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s],ParameterGroup=Parameters,Parameter=k" value="0.00050000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s],ParameterGroup=Parameters,Parameter=s_free" value="5.0000000000000018" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[s],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_x],ParameterGroup=Parameters,Parameter=k1" value="0.040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_x],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_x],ParameterGroup=Parameters,Parameter=k" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_x],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_y],ParameterGroup=Parameters,Parameter=k" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_y],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_z],ParameterGroup=Parameters,Parameter=k" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_z],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_z],ParameterGroup=Parameters,Parameter=k1" value="0.040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_z],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_y],ParameterGroup=Parameters,Parameter=k1" value="0.040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_y],ParameterGroup=Parameters,Parameter=f" value="0.0049751243781094509" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
      <ModelParameterSet key="ModelParameterSet_5" name="Barberis2012_Fig6_with_Clb3_interactions">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelParameterSet_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-09T11:58:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Sic1]" value="3.0110708950000012e+21" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[b]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[e]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[d]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[s]" value="5.0000000000000018" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[K_A]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[f]" value="0.019607843137254902" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb5_free]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb5-Sic1]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb3_free]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb3-Sic1]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb2_free]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb2-Sic1]" value="0" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_x],ParameterGroup=Parameters,Parameter=v" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_y],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_z],ParameterGroup=Parameters,Parameter=v" value="0.001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_s]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_s],ParameterGroup=Parameters,Parameter=v" value="0" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_x],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_x],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_y],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_y],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_z],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_z],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s],ParameterGroup=Parameters,Parameter=k" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s],ParameterGroup=Parameters,Parameter=s_free" value="5.0000000000000018" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[s],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz],ParameterGroup=Parameters,Parameter=k" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx],ParameterGroup=Parameters,Parameter=k" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy],ParameterGroup=Parameters,Parameter=k" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_x],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_x],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_x]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_x],ParameterGroup=Parameters,Parameter=k" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_x],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_y],ParameterGroup=Parameters,Parameter=k" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_y],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_z],ParameterGroup=Parameters,Parameter=k" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[e_z],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_z]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_z],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_z],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_y]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_y],ParameterGroup=Parameters,Parameter=k1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[d_y],ParameterGroup=Parameters,Parameter=f" value="0.019607843137254902" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 3.0110708950000012e+21 0 0 0 5.0000000000000018 0.0049751243781094509 0 0 0 0 0 0 1 1 0.0050000000000000001 0.040000000000000001 40 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_14" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="200"/>
        <Parameter name="StepSize" type="float" value="25"/>
        <Parameter name="Duration" type="float" value="5000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="1"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_16" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Report reference="Report_19" target="par_scan_copasi.txt" append="0" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="5"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Maximum" type="float" value="0.10000000000000001"/>
            <Parameter name="Minimum" type="float" value="0.01"/>
            <Parameter name="Number of steps" type="unsignedInteger" value="2"/>
            <Parameter name="Object" type="cn" value=""/>
            <Parameter name="Type" type="unsignedInteger" value="0"/>
            <Parameter name="log" type="bool" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="0"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_17" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_18" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Scatter Search" type="ScatterSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="200"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="par_estimation_copasi" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-6"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Sic1],Reference=InitialConcentration"/>
            <Parameter name="StartValue" type="float" value="2.2536499999999999"/>
            <Parameter name="UpperBound" type="cn" value="2.2541"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy],ParameterGroup=Parameters,Parameter=k,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.015943800000000001"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz],ParameterGroup=Parameters,Parameter=k,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="4.7882600000000001e-06"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy],ParameterGroup=Parameters,Parameter=k,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.25150099999999997"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz],ParameterGroup=Parameters,Parameter=k,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.063674599999999998"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz],ParameterGroup=Parameters,Parameter=k,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.0163207"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s],ParameterGroup=Parameters,Parameter=k,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="4.3536199999999998e-06"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx],ParameterGroup=Parameters,Parameter=k,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="3.6603600000000003e-05"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy],ParameterGroup=Parameters,Parameter=k,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="3.4699972153451079e-06"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx],ParameterGroup=Parameters,Parameter=k,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.37224480396472881"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy],ParameterGroup=Parameters,Parameter=k,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.26531024185428592"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz],ParameterGroup=Parameters,Parameter=k,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1.7984998208082689e-05"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="0"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_s],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="3.76652e-06"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_x],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.064043600000000006"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_y],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="0.00093831700000000004"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_z],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="3.0332800000000001e-06"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Values[K_A],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="7.6742999999999997"/>
            <Parameter name="UpperBound" type="cn" value="100"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.0288799"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="3.4144299999999999e-06"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
          <ParameterGroup name="FitItem">
            <ParameterGroup name="Affected Cross Validation Experiments">
            </ParameterGroup>
            <ParameterGroup name="Affected Experiments">
            </ParameterGroup>
            <Parameter name="LowerBound" type="cn" value="1e-06"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue"/>
            <Parameter name="StartValue" type="float" value="0.059944299999999999"/>
            <Parameter name="UpperBound" type="cn" value="2"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="1"/>
        <ParameterGroup name="Experiment Set">
          <ParameterGroup name="Experiment">
            <Parameter name="Data is Row Oriented" type="bool" value="1"/>
            <Parameter name="Experiment Type" type="unsignedInteger" value="1"/>
            <Parameter name="File Name" type="file" value="../../timecourse_data/loog.txt"/>
            <Parameter name="First Row" type="unsignedInteger" value="1"/>
            <Parameter name="Key" type="key" value="Experiment_0"/>
            <Parameter name="Last Row" type="unsignedInteger" value="13"/>
            <Parameter name="Normalize Weights per Experiment" type="bool" value="1"/>
            <Parameter name="Number of Columns" type="unsignedInteger" value="5"/>
            <ParameterGroup name="Object Map">
              <ParameterGroup name="0">
                <Parameter name="Role" type="unsignedInteger" value="3"/>
              </ParameterGroup>
              <ParameterGroup name="1">
                <Parameter name="Role" type="unsignedInteger" value="0"/>
              </ParameterGroup>
              <ParameterGroup name="2">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb5],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Weight" type="unsignedFloat" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="3">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb3],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
                <Parameter name="Weight" type="unsignedFloat" value="1"/>
              </ParameterGroup>
              <ParameterGroup name="4">
                <Parameter name="Object CN" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb2],Reference=Concentration"/>
                <Parameter name="Role" type="unsignedInteger" value="2"/>
              </ParameterGroup>
            </ParameterGroup>
            <Parameter name="Row containing Names" type="unsignedInteger" value="1"/>
            <Parameter name="Separator" type="string" value="&#x09;"/>
            <Parameter name="Weight Method" type="unsignedInteger" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolution Strategy (SRES)" type="EvolutionaryStrategySR">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Pf" type="float" value="0.47499999999999998"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_21" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_22" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
      </Method>
    </Task>
    <Task key="Task_23" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="2"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_24" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_20" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_25" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="2500"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="500"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="1"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0.59999999999999998"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb2],Reference=Concentration"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_18" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_10" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_11" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_12" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_13" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_14" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_18" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_19" name="Scan Parameters and Target function of optimization" taskType="scan" separator="&#x09;" precision="6">
      <Comment>
        This table includes scan parameters and the target function of the optimization.
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=Mondeel2017_2_3,Reference=Time"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
      </Table>
    </Report>
    <Report key="Report_20" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="total_concentrations_timecourse" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Clb2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Clb3]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Clb5]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Sic1]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Sic1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="fractions_of_free_Clb_and_Sic1" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[f]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[f],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[s]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[s],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="all_concentrations" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Clb2-Sic1]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb2-Sic1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Clb2_free]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb2_free],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Clb3-Sic1]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb3-Sic1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Clb3_free]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb3_free],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Clb5-Sic1]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb5-Sic1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Clb5_free]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[Clb5_free],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Clb5_vs_Sic1" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Clb5]|[Sic1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Sic1],Reference=Concentration"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Clb5_vs_d" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Clb5]|Values[d]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="1"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=Mondeel2017_2_3,Vector=Compartments[internal],Vector=Metabolites[Clb5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Parameter Estimation Result" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Experiment,[Clb2](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[2],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Clb2](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[2],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Clb2](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#00E600"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[2],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Clb3](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Clb3](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Clb3](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#0000FF"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[1],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Clb5](Fitted Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Fitted Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Clb5](Measured Value)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="3"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="1"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Measured Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Experiment,[Clb5](Weighted Error)" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="2"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="2"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="after"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Independent Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,ParameterGroup=Experiment Set,ParameterGroup=Experiment,Vector=Fitted Points[0],Reference=Weighted Error"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xy],ParameterGroup=Parameters,Parameter=k,Reference=Value" objectType="float" objectValue="1" minValue="1.19726e-06" maxValue="2" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_1" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_xz],ParameterGroup=Parameters,Parameter=k,Reference=Value" objectType="float" objectValue="0.1" minValue="3.22405e-06" maxValue="2.84981" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_2" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yy],ParameterGroup=Parameters,Parameter=k,Reference=Value" objectType="float" objectValue="0.1" minValue="1.64626e-06" maxValue="1.44792" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_3" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_yz],ParameterGroup=Parameters,Parameter=k,Reference=Value" objectType="float" objectValue="1" minValue="6.61151e-06" maxValue="2" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_4" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[a_zz],ParameterGroup=Parameters,Parameter=k,Reference=Value" objectType="float" objectValue="0.1" minValue="2.93444e-06" maxValue="0.2" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_5" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[b_s],ParameterGroup=Parameters,Parameter=k,Reference=Value" objectType="float" objectValue="0.0005" minValue="1e-06" maxValue="0.796707" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_6" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yx],ParameterGroup=Parameters,Parameter=k,Reference=Value" objectType="float" objectValue="0.7" minValue="1e-06" maxValue="1.4" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_7" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_yy],ParameterGroup=Parameters,Parameter=k,Reference=Value" objectType="float" objectValue="0.7" minValue="6.46826e-06" maxValue="4.39633" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_8" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zx],ParameterGroup=Parameters,Parameter=k,Reference=Value" objectType="float" objectValue="0.7" minValue="3.87466e-06" maxValue="1.99414" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_9" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zy],ParameterGroup=Parameters,Parameter=k,Reference=Value" objectType="float" objectValue="0.7" minValue="4.82531e-05" maxValue="1.4" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_10" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[g_zz],ParameterGroup=Parameters,Parameter=k,Reference=Value" objectType="float" objectValue="0.7" minValue="6.98649e-05" maxValue="1.4" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_11" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_s],ParameterGroup=Parameters,Parameter=v,Reference=Value" objectType="float" objectValue="0.1374" minValue="0" maxValue="0.6" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_12" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_x],ParameterGroup=Parameters,Parameter=v,Reference=Value" objectType="float" objectValue="0.08942" minValue="0.01" maxValue="0.2" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_13" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_y],ParameterGroup=Parameters,Parameter=v,Reference=Value" objectType="float" objectValue="0.01004" minValue="1e-06" maxValue="1.25366" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_14" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Reactions[v_z],ParameterGroup=Parameters,Parameter=v,Reference=Value" objectType="float" objectValue="0.00101" minValue="1e-06" maxValue="0.00349282" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_15" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Values[K_A],Reference=InitialValue" objectType="float" objectValue="40" minValue="3.46344e-06" maxValue="97.8665" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_16" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Values[b],Reference=InitialValue" objectType="float" objectValue="1" minValue="1.86091e-06" maxValue="1.87918" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_17" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Values[d],Reference=InitialValue" objectType="float" objectValue="0.04" minValue="0" maxValue="0.474367" tickNumber="1000" tickFactor="100" scaling="linear"/>
      <Slider key="Slider_18" associatedEntityKey="Task_15" objectCN="CN=Root,Model=Mondeel2017_2_3,Vector=Values[e],Reference=InitialValue" objectType="float" objectValue="0.005" minValue="0" maxValue="0.162902" tickNumber="1000" tickFactor="100" scaling="linear"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="bar2012RedNoInhOsc.xml">
    <SBMLMap SBMLid="Clb2" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="Clb3" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Clb5" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Clb_degr" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Constant_flux__irreversible_0" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="Sic1" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="act_Clb2_on_Clb2" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="act_Clb3_on_Clb2" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="act_Clb3_on_Clb3" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="act_Clb5_on_Clb2" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="degr_Clb2" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="degr_Clb3" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="degr_Clb5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="degr_Sic1" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="inh_Clb2_on_Clb2" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="inh_Clb2_on_Clb3" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="inh_Clb2_on_Clb5" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="inh_Clb3_on_Clb3" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="inh_Clb3_on_Clb5" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="internal" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="sic1_degr_from_ternary_complex" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="synth_Clb2" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="synth_Clb3" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="synth_Clb5" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="synth_Sic1" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="ternary_complex_degr" COPASIkey="ModelValue_1"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-05T10:58:50Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-05T10:58:50Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-05T10:58:50Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_15" name="dimensionless" symbol="1">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_14">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-05T10:58:50Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        1
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-05T10:58:50Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-05T10:58:50Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
<dcterms:created>
<rdf:Description>
<dcterms:W3CDTF>2019-07-05T10:58:50Z</dcterms:W3CDTF>
</rdf:Description>
</dcterms:created>
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
