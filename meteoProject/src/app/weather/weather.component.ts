import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-weather',
  standalone: true,
  imports: [],
  templateUrl: './weather.component.html',
  styleUrl: './weather.component.css'
})
export class WeatherComponent {
  @Input() public tempMetaData: any;
  @Input() public statusWeatherMetaData: any;
  @Input() public iconMetaData: any;
}
