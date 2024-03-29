import { MapComponent } from './../map/map.component';
import { RouterOutlet } from '@angular/router';
import { Component, Output, EventEmitter } from '@angular/core';
import { FormBuilder, ReactiveFormsModule } from '@angular/forms';

@Component({
  selector: 'app-form-postal',
  standalone: true,
  imports: [ReactiveFormsModule],
  templateUrl: './form-postal.component.html',
  styleUrl: './form-postal.component.css'
})

export class FormPostalComponent {

  @Output() dataCityAPI = new EventEmitter<any>();
  @Output() dataWeatherAPI = new EventEmitter<any>();

  postalForm = this.formBuilder.group({
    postalCode: ''
  });

  constructor (
      private formBuilder: FormBuilder
    ) {}

    async onSubmit(){
      const reponse = await fetch("https://api-adresse.data.gouv.fr/search/?q=" + this.postalForm.value.postalCode);      
      const city = await reponse.json();

      this.dataCityAPI.emit(city.features[0]);

      const reponseWeather = await fetch("https://api.openweathermap.org/data/2.5/weather?q=" + city.query +",fr&appid=cff3f47342a3e96950378858140f2efb&units=metric&&lang=fr");
      const weather = await reponseWeather.json();

      console.log(
        weather);
      
      this.dataWeatherAPI.emit(weather);

        

      ////Click Front
      const weatherDOM = document.querySelector('#componentWeather');
      const mapDOM = document.querySelector('#cardMap');

      weatherDOM?.classList.remove("d-none");
      mapDOM?.classList.add('animate__animated',  'animate__flipInY');


    }
}
