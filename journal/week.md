1. Establish the environment: from .env.example
- set PROJECT_ROOT 
- check $THEIA_WORKSPACE_ROOT
- set aws local keys, region
- set TERRAFORM_CLOUD_TOKEN

2. Install terraform, aws-cli, http-server, sinatra for nmp serer

3. Setup terraform modules and projects
- terrahome modules
left at 
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity
data "aws_caller_identity" "current" {}
'''
main outside
- main/outputs/variables > Find \\TODO to fix


??
terraformrc

provider_installation {
  filesystem_mirror {
    path = "/home/gitpod/.terraform.d/plugins"
    include ["local.providers/*/*"]
  } 
  direct {
   exclude = ["local.providers/*/*"] 
  }
}


Next:
- local provider
    - build the provider/ ensure the local env project_root is set instead of builtin of gitpod

- prepare provider terratowns
- go run main.go


Next02:
prepare the static host website folder.

Next03:
prepare mock server + bin to do the CURL for CRUD operation.