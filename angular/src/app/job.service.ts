import { Injectable } from '@angular/core';
import { Job, JobType } from './job';
import { Property } from './property';
import { Supplier } from './supplier';
import { Observable } from 'rxjs/Rx';
import { catchError, map, tap } from 'rxjs/operators';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from '../environments/environment';

const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};

@Injectable()
export class JobService {
  private jobsUrl = '/job';  // URL to web api
  private jobTypesUrl = '/job_type';  // URL to web api
  private PropertiesUrl = '/property';  // URL to web api
  private SuppliersUrl = '/supplier';  // URL to web api

  jobs: Job[];
  public jobTypes: JobType[];
  public suppliers: Supplier[];
  public properties: Property[];

  constructor(private http: HttpClient) {
    this.eagerLoad();
  }

  /**
  * Handle Http operation that failed.
  * Let the app continue.
  * @param operation - name of the operation that failed
  * @param result - optional value to return as the observable result
  */
  private handleError<T> (operation = 'operation', result?: T) {
    return (error: any): Observable<T> => {

      // TODO: send the error to remote logging infrastructure
      console.error(error); // log to console instead

      // Let the app keep running by returning an empty result.
      return Observable.of(result as T);
    };
  }

  /** GET job by id. Will 404 if id not found */
  getJob(id: number): Observable<Job> {
    const url = `${environment.apiEndpoint + this.jobsUrl}/${id}`;
    return this.http.get<Job>(url).pipe(
      catchError(this.handleError<Job>(`getJob id=${id}`))
    );
  }

  postJob(job: Job): Observable<Job> {
    const url = environment.apiEndpoint + this.jobsUrl;
    return this.http.post<Job>(url, job, httpOptions).pipe(
      catchError(this.handleError<Job>(`addJob`))
    );
  }

  addJob(job: Job): void {
    this.postJob(job)
      .subscribe(job => {
      this.jobs.push(job);
      new Alert('success', 'Job details have been added and saved!').push();
      });
  }

  saveJob(job: Job): Observable<Job> {
    const url = `${environment.apiEndpoint}${this.jobsUrl}/${job.id}`;
    new Alert('success', 'Job details have been saved!').push();
    return this.http.patch<Job>(url, job, httpOptions).pipe(
      catchError(this.handleError<Job>(`saveJob id=${job.id}`))
    );
  }

  getJobs(): Observable<Job[]> {
    return this.http.get<Job[]>(environment.apiEndpoint + this.jobsUrl)
    .pipe(
      catchError(this.handleError('getJobs', []))
    );
  }

  getJobTypes(): Observable<JobType[]> {
    return this.http.get<JobType[]>(environment.apiEndpoint + this.jobTypesUrl)
    .pipe(
      catchError(this.handleError('getJobTypes', []))
    );
  }

  getProperties(): Observable<Property[]> {
    return this.http.get<Property[]>(environment.apiEndpoint + this.PropertiesUrl)
    .pipe(
      catchError(this.handleError('getProperties', []))
    );
  }

  getSuppliers(): Observable<Supplier[]> {
    return this.http.get<Supplier[]>(environment.apiEndpoint + this.SuppliersUrl)
    .pipe(
      catchError(this.handleError('getSuppliers', []))
    );
  }

  eagerLoad(): void {
    this.getSuppliers()
      .subscribe(suppliers => {this.suppliers = suppliers});

    this.getProperties()
      .subscribe(properties => {this.properties = properties});

    this.getJobTypes()
      .subscribe(jobTypes => {this.jobTypes = jobTypes});

    this.getJobs()
      .subscribe(jobs => {this.jobs = jobs});
  }

}
