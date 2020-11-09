terraform {
    backend "remote" {
        hostname = "app.terraform.io"
        organization = "john-morsley"
        workspaces {
            name = "learning-gitlab" 
        }
    }
}