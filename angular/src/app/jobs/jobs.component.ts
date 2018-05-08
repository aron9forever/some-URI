import { Job } from '../job';
import { JobService } from '../job.service';
import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';

@Component({
  selector: 'app-jobs',
  templateUrl: './jobs.component.html',
  styleUrls: ['./jobs.component.css']
})
export class JobsComponent implements OnInit {
  selectedJob: Job;
  jobs: Job[];
  constructor(private jobService: JobService) { }

  onSelect(job: Job): void {
    if(this.selectedJob === job)
      this.selectedJob = undefined;
    else
      this.selectedJob = job;
  }

  getJobs(): void {
    this.jobService.getJobs()
      .subscribe(jobs => this.jobs = jobs);
  }

  ngOnInit() {
    this.getJobs();
  }

}
