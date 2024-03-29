import { Component, Input, OnChanges, SimpleChanges } from '@angular/core';

@Component({
  selector: 'app-geo-position',
  standalone: true,
  imports: [],
  templateUrl: './geo-position.component.html',
  styleUrl: './geo-position.component.css'
})

export class GeoPositionComponent {
  @Input() public geoPositionMetaDataX: any;
  @Input() public geoPositionMetaDataY: any;
  @Input() public cityMetaData: any;
}
