provider "aws" {

  access_key = "AKIA2IGWAIEG53SGXGEL"
  secret_key = "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"
  region     = "ap-south-1"

}

provider "aws" {

  access_key = "AKIA2IGWAIEG53SGXGEL"
  secret_key = "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"
  region     = "ca-central-1"
  alias      = "Canada"
  
}

