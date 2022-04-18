import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import * as $ from "jquery";

@Component({
  selector: 'page-contact',
  templateUrl: 'contact.html'
})
export class ContactPage {

  public clima: Array<any>;
  public valor= 42;

  constructor(public navCtrl: NavController) {

  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad ContactPage');

    //$.getJSON("http://api.openweathermap.org/data/2.5/weather?lat=" + lat + "&lon=" + longit + "&appid=" + apiKey, function(data) { }
    var url = "http://api.openweathermap.org/data/2.5/weather?id=2172797&appid=6665512624539b3d8c01ab08fc24ccc3&units=metric"

    $.getJSON(url).then(function(data) {
        this.clima=data;
        console.log(this.clima);
    });
      //var city = $("#city").val();
      
      // var city = 2172797;
      // var key = "6665512624539b3d8c01ab08fc24ccc3";
  
      // $.ajax({
      //   url: 'http://api.openweathermap.org/data/2.5/weather',
      //   dataType: 'json',
      //   type: 'GET',
      //   data: {q:city, appid: key, units: 'metric'},
  

      //   success: function(data){
      //     var wf=data;
      //     console.log (wf);
      //   },
      //   error: function (xhr, thrownError) {
      //     console.log(xhr.status);
      //     console.log(thrownError);
      //   }
      // });


  }
  
}
