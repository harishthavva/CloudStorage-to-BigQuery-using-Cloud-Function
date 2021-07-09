from google.cloud import bigquery

def hellgcs(data, context):
    client = bigquery.Client()
    table_id = "Enter your Table ID like projectId.DatasetName.tableName"
    job_config = bigquery.LoadJobConfig(
        schema=[
        bigquery.SchemaField("Name", "STRING"),
        bigquery.SchemaField("Roll_No", "INTEGER"),
        bigquery.SchemaField("Gender", "STRING"),
        ],
        create_disposition="CREATE_IF_NEEDED",
        write_disposition="WRITE_APPEND",
        skip_leading_rows=1,
        source_format=bigquery.SourceFormat.CSV,
    )
    uri = "gs://pythonupload/*.csv"
 
    load_job = client.load_table_from_uri(
        uri, table_id, job_config=job_config
    )   
    load_job.result() 