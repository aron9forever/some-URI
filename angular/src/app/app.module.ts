import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';


import { AppComponent } from './app.component';
import { JobsComponent } from './jobs/jobs.component';
import { AlertsComponent } from './alerts/alerts.component';
import { JobFormComponent } from './job-form/job-form.component';

@NgModule({
  declarations: [
    AppComponent,
    JobsComponent,
    AlertsComponent,
    JobFormComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
