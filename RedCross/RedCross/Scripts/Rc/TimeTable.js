﻿function checkCell(c,a){console.log(c);var b=document.getElementById(a);console.log(c.checked);if(c.checked){b.className="blue"}else{b.className="white"}}function checkColumn(d,e){for(var c=0;c<13;++c){var a="row"+c+d.name;var b=document.getElementsByName(a);if(d.checked){b[0].checked=true}else{b[0].checked=false}checkCell(b[0],"t"+c+"d"+e)}}function checkRow(e,d){for(var c=0;c<7;++c){var a=e.name+"cell"+c;var b=document.getElementsByName(a);if(e.checked){b[0].checked=true}else{b[0].checked=false}checkCell(b[0],"t"+d+"d"+c)}};