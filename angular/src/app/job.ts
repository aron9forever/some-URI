export class Job {
  constructor(
    public property_address: string,
    public supplier_title: string,
    public job_type: string,
    public notes?: string,
    public id?: number
  ) {  }
}

export class JobType {
  title: string;
}
