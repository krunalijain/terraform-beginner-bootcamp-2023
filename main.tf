terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "TF-Bootcamp-2023"

  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
  #cloud {
  #  organization = "TF-Bootcamp-2023"
  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}

}

provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.terratowns_access_token
}

module "home_minimilitia_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.minimilitia.public_path
  content_version = var.minimilitia.content_version
}

resource "terratowns_home" "home" {
  name = "Mini Militia, also known as Doodle Army 2 "
  description = <<DESCRIPTION
Mini Militia, also known as Doodle Army 2, is a popular mobile and online multiplayer game known for 
its intense action and fast-paced gameplay. Developed by Appsomniacs LLC, the game offers a unique 
blend of 2D graphics and a variety of weapons, making it accessible and exciting for players of all ages. 
Players can engage in team-based battles or free-for-all combat, using customizable avatars and characters. 
With simple controls and the ability to connect with friends for multiplayer matches, 
Mini Militia has garnered a large and dedicated fan base, offering hours of entertaining gaming experiences.
DESCRIPTION
  domain_name = module.home_minimilitia_hosting.domain_name
  town = "gamers-grotto"
  content_version = var.minimilitia.content_version
}

module "home_suttarphini_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.suttarphini.public_path
  content_version = var.suttarphini.content_version
}

resource "terratowns_home" "home_suttarphini" {
  name = "Suttarphini - Queen of sweets in Rajasthan"
  description = <<DESCRIPTION
Suttarphini, known as the "Queen of Sweets" in Rajasthan, 
is a delectable treat celebrated for its rich flavor and unique ingredients. 
This handcrafted dessert blends the creaminess of mawa with the crunch of nuts, creating an exquisite texture. 
Its long shelf life makes it an ideal gift for special occasions, 
and it serves as a symbol of regional pride and cultural heritage, enhancing celebrations across the state.
DESCRIPTION
  domain_name = module.home_suttarphini_hosting.domain_name
  town = "cooker-cove"
  content_version = var.suttarphini.content_version
}