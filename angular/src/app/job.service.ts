import { Injectable } from '@angular/core';
import { Job } from './job';
import { Observable } from 'rxjs/Rx';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from '../environments/environment';

@Injectable()
export class JobService {
  private jobsUrl = '/job';  // URL to web api

  constructor(private http: HttpClient) { }

  getJobs(): Observable<Job[]> {
    return this.http.get<Job[]>(environment.apiEndpoint + this.jobsUrl);
  }

}
