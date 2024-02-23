import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GeoPositionComponent } from './geo-position.component';

describe('GeoPositionComponent', () => {
  let component: GeoPositionComponent;
  let fixture: ComponentFixture<GeoPositionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [GeoPositionComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(GeoPositionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
