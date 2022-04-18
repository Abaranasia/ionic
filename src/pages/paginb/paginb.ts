import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';



@IonicPage()
@Component({
  selector: 'page-paginb',
  templateUrl: 'paginb.html',
})
export class PaginbPage {
  numero1='';
  numero2='';
  constructor(public navCtrl: NavController, public navParams: NavParams) {
    this.numero1=navParams.get('numero1');
    this.numero2=navParams.get('numero2');
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad PaginbPage');
  }

}
