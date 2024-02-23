import {
  Component,
  Input,
  OnChanges,
  OnInit,
  SimpleChanges,
} from '@angular/core';
import 'leaflet/dist/leaflet.css';
import * as L from 'leaflet';

@Component({
  selector: 'app-map',
  standalone: true,
  imports: [],
  templateUrl: './map.component.html',
  styleUrl: './map.component.css',
})
export class MapComponent implements OnChanges, OnInit {

  ngOnInit(): void {
     this.map = L.map('map').setView(
          [51.505, -0.09],
          13
        );
        L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
          maxZoom: 19,
          attribution:
            '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
        }).addTo(this.map);
  }

  @Input() public geoPositionMetaDataX: any;
  @Input() public geoPositionMetaDataY: any;

  public newPositionX: any;
  public newPositionY: any;
  public map: L.Map | undefined;

  ngOnChanges(changes: SimpleChanges): void {

    this.newPositionX = changes['geoPositionMetaDataX'].currentValue;
    this.newPositionY = changes['geoPositionMetaDataY'].currentValue;

    if (this.newPositionX !== undefined && this.newPositionY !== undefined) {
      
      //Check if map exist
      if (this.map) {
        this.map.remove();
      }

        this.map = L.map('map').setView(
          [parseFloat(this.newPositionY), parseFloat(
            this.newPositionX)],
          13
        );
        L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
          maxZoom: 19,
          attribution:
            '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>',
        }).addTo(this.map);
  
        // var circle = L.circle([parseFloat(this.newPositionY), parseFloat(this.newPositionX)], {
        //   color: 'red',
        //   fillColor: '#f03',
        //   fillOpacity: 0.5,
        //   radius: 500
        // }).addTo(map);
  
        var popup = L.popup()
          .setLatLng([
            parseFloat(this.newPositionY),
            parseFloat(this.newPositionX),
          ])
          .setContent('Vous êtes ici !')
          .openOn(this.map);
    }
  }
}
