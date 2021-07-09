provider "google" {
    credentials = "./secondService.json"
    project     = "causal-smoke-318006"
}

resource "google_bigquery_dataset" "DataSet" {
  dataset_id                  = "Dataset1"
  location                    = "US"
}

resource "google_bigquery_table" "Table" {
  dataset_id = google_bigquery_dataset.DataSet.dataset_id
  table_id   = "Table1"
  deletion_protection = false
}
