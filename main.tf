terraform {
  cloud {
    organization = "hyungwook"
    hostname = "fdo.hyungwook-yu.sbx.hashidemos.io" # Optional; defaults to app.terraform.io

    workspaces {
    #   project = "networking-development"
    #   tags = ["networking", "source:cli"]
    name = "hyungwook-ws"
    }
  }
}

data "http" "example_get" {
  url    = "https://fdo.hyungwook-yu.sbx.hashidemos.io/_health_check"
  method = "GET"
}

output "response_body" {
  #value = jsondecode(data.http.example_get.response_body)
  value = data.http.example_get.response_body
}

output "status_code" {
  #value = jsondecode(data.http.example_get.response_body)
  value = data.http.example_get.status_code
}