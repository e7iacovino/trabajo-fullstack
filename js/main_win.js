/*function auth_loc()
{
  document.getElementById("aviso").style.display="none";
  document.getElementById("perfil").style.display="flex";
	var postcode, ciudad;
      var script = document.createElement('script');
      script.src = 'https://code.jquery.com/jquery-3.6.0.min.js';
      document.getElementsByTagName('head')[0].appendChild(script);
      script.onload=function()
      {
        if (navigator.geolocation){ 

          navigator.geolocation.getCurrentPosition(function(position)
          {

            var la=position.coords.latitude, lo=position.coords.longitude;
            $.ajax({
                      dataType: "json",
                      url: "http://nominatim.openstreetmap.org/reverse",
                      type: "get",
                      data: {format: "json", lat:la, lon:lo}
                    }).done(function(data) {
                   	  document.getElementById("aviso").style.display="none";
                   	  document.getElementById("perfil").style.display="flex";
                      console.log(data);
                      postcode= data.address.postcode;
                      ciudad = data.address.town;
                      document.getElementById("cityName").innerHTML=ciudad;
                    });
          }
        );}
      }

}
	  */