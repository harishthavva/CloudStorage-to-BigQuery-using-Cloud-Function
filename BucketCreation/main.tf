provider "google" {
    credentials = "Enter your Service account Path"
    project     = "secure-racer-303703"
    region      = "us-central1"
    zone        = "us-central1-c"
}

resource "google_storage_bucket" "Bucket" {
    # Add your Bucket Name
     name          = "Enter your Name" 
     location      = "US"
     force_destroy = true
}
