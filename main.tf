terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }

  cloud {
    organization = "Yap365"
    workspaces {
      name = "terrahome-yap365"
    }
  }
}

provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.terratowns_access_token
}

module "turnbased_rgp_home" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.turnbased_rgp.public_path
  content_version = var.turnbased_rgp.content_version
  bucket_name = var.bucket_name
}

resource "terratowns_home" "home" {
  name = "Turn-based RPG Switch Home"
  description = <<DESCRIPTION
Welcome to our blog dedicated to turn-based RPG games on the Nintendo Switch! Here, we dive deep into the immersive world of strategic battles and captivating narratives that define this genre. Whether you’re a seasoned gamer or new to the RPG realm, our blog offers insights, reviews, and the latest news to enhance your gaming experience.
DESCRIPTION
  domain_name = module.turnbased_rgp_home.domain_name
  town = "gamers-grotto"
  content_version = var.turnbased_rgp.content_version
}

module "spin_disc_bar" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.spindisc_bar.public_path
  content_version = var.spindisc_bar.content_version
  bucket_name = var.bucket_name
} 

resource "terratowns_home" "bar" {
  name = "What spin around keeps spinning around"
  description = <<DESCRIPTION
Welcome to our spin dics bar. Hope that you won't faint out <3
DESCRIPTION
  domain_name = module.spin_disc_bar.domain_name
  town = "melomaniac-mansion"
  content_version = var.spindisc_bar.content_version
}
