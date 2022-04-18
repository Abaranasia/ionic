import { Component } from '@angular/core';
import { IonicPage, NavController} from 'ionic-angular';
import { PaginbPage } from '../paginb/paginb';

@IonicPage()
@Component({
  selector: 'page-pagina-a',
  templateUrl: 'pagina-a.html',
})
export class PaginaAPage {
  numero1='';
  numero2='';
  constructor(public navCtrl: NavController) {
  }
  public continuar(){
    this.navCtrl.setRoot(PaginbPage,{numero1:this.numero1});
    this.navCtrl.setRoot(PaginbPage,{numero1:this.numero2});
  }
  

}
