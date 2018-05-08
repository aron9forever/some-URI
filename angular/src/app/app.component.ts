import { Component } from '@angular/core';
import { JobService } from './job.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [JobService],
})
export class AppComponent {
  title = 'Jobs for all';
}
