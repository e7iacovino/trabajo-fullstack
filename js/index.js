function after (ms, fn)
{ 
  setTimeout(fn, ms); 
}


document.getElementById("p1").style.animation="appear 3s";
document.getElementById("p1").style.opacity="100%";
after(200, function(){document.getElementById("p2").style.animation="appear 2s";document.getElementById("p2").style.opacity="100%";});
after(400, function(){document.getElementById("p3").style.animation="appear 1s";document.getElementById("p3").style.opacity="100%";});
