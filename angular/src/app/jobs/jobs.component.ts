import { Property } from '../property';
import { Supplier } from '../supplier';
import { Job, JobType } from '../job';
import { JobService } from '../job.service';
import { Component, OnInit } from '@angular/core';


@Component({
  selector: 'app-jobs',
  templateUrl: './jobs.component.html',
  styleUrls: ['./jobs.component.css']
})
export class JobsComponent implements OnInit {
  selectedJob: Job;
  model: Job;
  persistentAlert;

  constructor(private jobService: JobService) { }

  deselect(): void {
    this.jobService.saveJob(this.selectedJob)
    .subscribe();
    this.selectedJob = undefined;
  }

  onSelect(job: Job): void {


    if(typeof this.persistentAlert !== 'undefined')
      this.persistentAlert.despawn();

    if(this.selectedJob === job)
      this.deselect();
    else {
      if(typeof this.selectedJob !== 'undefined')
        this.jobService.saveJob(this.selectedJob)
        .subscribe();

      this.selectedJob = job;
      this.persistentAlert = new Alert('info',
      'You are editing a Job',
      'To save, deselect the job by clicking it again, or by selecting another job.').persist();
    }
  }

  ngOnInit() {

  }

}
