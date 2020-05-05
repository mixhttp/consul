services {
  name = "s1"
  port = 8080
  connect {
    sidecar_service {
      proxy {
        upstreams = [
          {
            destination_name = "s2"
            local_bind_port = 5000
            config {
              passive_health_check {
                interval = "22s"
                max_failures = 4
              }
            }
          }
        ]
      }
    }
  }
}
