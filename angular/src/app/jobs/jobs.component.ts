import { Job } from '../job';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-jobs',
  templateUrl: './jobs.component.html',
  styleUrls: ['./jobs.component.css']
})
export class JobsComponent implements OnInit {

  job: Job = {
      id: 1,
      notes: '~Wooosh'
  };


  constructor() { }

  ngOnInit() {
  }

}
