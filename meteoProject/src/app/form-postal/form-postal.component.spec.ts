import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FormPostalComponent } from './form-postal.component';

describe('FormPostalComponent', () => {
  let component: FormPostalComponent;
  let fixture: ComponentFixture<FormPostalComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [FormPostalComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(FormPostalComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
