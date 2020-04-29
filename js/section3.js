window.onload = initialize;

function initialize() {
    displayResult();
}

function displayResult()
{
xml = loadXMLDoc("https://cors-anywhere.herokuapp.com/http://www.aemet.es/xml/playas/play_v2_3501601.xml");
xsl = loadXMLDoc("section3.xsl");
// code for IE
if (window.ActiveXObject || http.responseType == "msxml-document")
  {
  ex = xml.transformNode(xsl);
  document.getElementById("upload").innerHTML = ex;
  }
// code for Chrome, Firefox, Opera, etc.
else if (document.implementation && document.implementation.createDocument)
  {
  xsltProcessor = new XSLTProcessor();
  xsltProcessor.importStylesheet(xsl);
  resultDocument = xsltProcessor.transformToFragment(xml, document);
  document.getElementById("upload").appendChild(resultDocument);
  }
}

function loadXMLDoc(filename)
{
if (window.ActiveXObject)
  {
  http = new ActiveXObject("Msxml2.XMLHTTP");
  }
else
  {
  http = new XMLHttpRequest();
  }
http.open("GET", filename, false);
try {http.responseType = "msxml-document"} catch(err) {} // Helping IE11
http.send("");
return http.responseXML;
}