import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { AlertController } from 'ionic-angular';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  constructor(
    public navCtrl: NavController,
    public alertCtrl: AlertController) {
  }

  showAlert() {
    let alert = this.alertCtrl.create({
      title: 'Esto es un alert de muestra',
      subTitle: 'Pues eso, un alert comun',
      buttons: ['Cerrar']
    });
    alert.present();
  }

  showCheckbox() {
    let alert = this.alertCtrl.create();
    alert.setTitle('Selecciona planetas');
    alert.addInput({
      type: 'checkbox',
      label: 'Mercurio',
      value: 'value1',
    });
    alert.addInput({
      type: 'checkbox',
      label: 'Venus',
      value: 'value2'
    });
    alert.addInput({
      type: 'checkbox',
      label: 'Tierra',
      value: 'value3'
    });
    alert.addInput({
      type: 'checkbox',
      label: 'Marte',
      value: 'value4'
    });
    alert.addButton('Cancel');
    alert.addButton({
      text: 'Okay',
      handler: data => {
        console.log('Checkbox data:', data);
      }
    });
    alert.present();
  }
  
}
