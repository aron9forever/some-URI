import { Injectable } from '@angular/core';
import { Job } from './job';
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

  constructor(private http: HttpClient) { }

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

  saveJob(job: Job): Observable<Job> {
    const url = `${environment.apiEndpoint}${this.jobsUrl}/${job.id}`;
    console.log("job saved? " + url);
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

}
