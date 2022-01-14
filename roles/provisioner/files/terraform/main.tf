module "testbed" {
  source = "git://github.com/jharmison-redhat/disconnected-openshift-testbed.git?ref=0.1.0"

  public_key     = var.public_key
  cluster_name   = var.cluster_name
  cluster_domain = var.cluster_domain
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Name    = "${var.cluster_name}.${var.cluster_domain}"
      Project = "disconnected-openshift-testbed"
    }
  }
}