import { Component } from '@angular/core';
import { Routes } from '@angular/router';
import { FormPostalComponent } from './form-postal/form-postal.component';
import { MapComponent } from './map/map.component';

export const routes: Routes = [
    {
        path: 'map', component: MapComponent       
    }
];
