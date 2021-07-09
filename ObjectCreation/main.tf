provider "google" {
    credentials = "./seviceAccount.json"
    project     = "secure-racer-303703"
    region      = "us-central1"
    zone        = "us-central1-c"
}

resource "google_storage_bucket_object" "Object" {
    # Add your Bucket_Name
    name   = "Add your Object Name"
    source = "Add your File in Bucket"
    bucket = "Add your Bucket Name"
}