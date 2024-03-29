import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { FormPostalComponent } from './form-postal/form-postal.component';
import { GeoPositionComponent } from './geo-position/geo-position.component';
import { WeatherComponent } from './weather/weather.component';
import { MapComponent } from './map/map.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [
    RouterOutlet, FormPostalComponent, 
    GeoPositionComponent, WeatherComponent, 
    MapComponent, HeaderComponent, FooterComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {

  //Data of API
  public data: any;

  //City
  public geoPositionX: any;
  public geoPositionY: any;
  public city: any;

  //Weather
  public temp:any;
  public statusWeather: any;
  public iconWeather: any;

  public title = 'meteoProject';

  //J'hydrate mon attribut avec l'évenement @Output
  handleVilleJson(dataAPI: any) {

    this.data = dataAPI;

    this.geoPositionX = dataAPI.geometry.coordinates[0];
    this.geoPositionY = dataAPI.geometry.coordinates[1];
    this.city = dataAPI.properties.city;
  }

  handleWeatherJson(dataAPI: any){
    this.temp = dataAPI.main.temp;
    console.log(dataAPI.main)
    this.statusWeather = dataAPI.weather[0].description;
    this.iconWeather = dataAPI.weather[0].icon;
    console.log(dataAPI);
  }
}
