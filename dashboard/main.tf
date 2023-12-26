resource "newrelic_one_dashboard" "exampledash1" {
  name        = "New Relic Terraform Dashboard"
#   permissions = "public_read_only"

  page {
    name = "New Relic Terraform Dashboard Page"

    widget_bar {
      title  = "Requests per minute"
      row    = 1
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query = "SELECT average(host.memoryUsedPercent) AS 'Memory used %' FROM Metric WHERE `entityGuid` = 'NDI2ODYxMXxJTkZSQXxOQXwxNjA2NjEzMzM5MzE3ODgzNDM2' TIMESERIES auto"
      }
    }

    widget_pie {
      title  = "Average transaction duration, by application"
      row    = 1
      column = 7
      width  = 6
      height = 3

      nrql_query {
        query      = "SELECT average(host.cpuPercent) AS 'CPU used %' FROM Metric WHERE `entityGuid` = 'NDI2ODYxMXxJTkZSQXxOQXwxNjA2NjEzMzM5MzE3ODgzNDM2' TIMESERIES auto"
      }

    }
    widget_line {
      title  = "Average transaction duration, by application"
      row    = 2
      column = 1
      width  = 12
      height = 3

      nrql_query {
        query      = "SELECT average(host.cpuPercent) AS 'CPU used %' FROM Metric WHERE `entityGuid` = 'NDI2ODYxMXxJTkZSQXxOQXwxNjA2NjEzMzM5MzE3ODgzNDM2' TIMESERIES auto"
      }

    }
  }
}