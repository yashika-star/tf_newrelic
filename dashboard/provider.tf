# Configure terraform
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}
 
# Configure the New Relic provider
provider "newrelic" {
  account_id = 4268611
  api_key = "NRAK-RUT3SPI5MS4TV4CR7NWV5YS5X4M"   # Usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}