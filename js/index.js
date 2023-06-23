function after (ms, fn)
{ 
  setTimeout(fn, ms); 
}

var doc = new Document();
doc.URL="...\index.html"
doc.getElementById("p1").style.animation="appear 1s";
after(1000, function(){doc.getElementById("p2").style.animation="appear 1s"});
after(2000, function(){doc.getElementById("p3").style.animation="appear 1s"});
