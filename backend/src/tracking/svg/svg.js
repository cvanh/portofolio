const svg = document.getElementById("svg");

fetch("http://localhost/portofolio/backend/src/tracking")
  .then((response) => response.json())
  .then((data) => RenderData(data));

  function RenderData(data){
    console.log(data);
    SvgInsertText(data.ip,10,50,50);
    SvgInsertText(data.time,10,50,60);


  }

// SvgInsertText("kaas",10,50,50);


/**
 * 
 * @param {string} data the text you want displayed
 * @param {int} size of the font
 * @param {int} x pos
 * @param {int} y pos
 */
function SvgInsertText(data,size,x,y) {
  var svgNS = "http://www.w3.org/2000/svg";
  var txt = document.createElementNS(svgNS, 'text');
  txt.setAttributeNS(null, 'x', x);
  txt.setAttributeNS(null, 'y', y);
  txt.setAttributeNS(null,'font-size',size);
  txt.innerHTML = data;
  svg.appendChild(txt);
}

// if (navigator.geolocation) {
//   navigator.geolocation.getCurrentPosition(showPosition);
// } else {
//   alert("Geolocation is not supported by this browser.");
// }

// error handeling for navigator.geolocation
function showError(error) {
  switch (error.code) {
    case error.PERMISSION_DENIED:
      alert("User denied the request for Geolocation.");
      break;
    case error.POSITION_UNAVAILABLE:
      alert("Location information is unavailable.");
      break;
    case error.TIMEOUT:
      alert("The request to get user location timed out.");
      break;
    case error.UNKNOWN_ERROR:
      alert("An unknown error occurred.");
      break;
  }
}
