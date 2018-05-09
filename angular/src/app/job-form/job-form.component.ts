import { Component, OnInit } from '@angular/core';
import { Property } from '../property';
import { Supplier } from '../supplier';
import { Job, JobType } from '../job';
import { JobService } from '../job.service';

@Component({
  selector: 'app-job-form',
  templateUrl: './job-form.component.html',
  styleUrls: ['./job-form.component.css']
})
export class JobFormComponent implements OnInit {

  model = new Job('','','','');

  onSubmit() {
    this.jobService.addJob(this.model);
    console.log(this.model)
    this.model = new Job('','','','');
  }

  constructor(private jobService: JobService) { }

  ngOnInit() {
  }

}
