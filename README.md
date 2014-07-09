## helper utils for digital ocean

Some scripts to work with digital ocean

## Setup

 * Go to https://cloud.digitalocean.com/settings/applications
 * Create a personal access token
 * Create .env and add the token like so:

  ```
  export DIGITALOCEAN_TOKEN=129o718927c37439aljskfdlajsd8fcca6e643ab96b0c299a9a4450ea30c4894
  ```

 * Run ```. .env``` to pull the token into your environment

## Utils


 * create-riak-droplet - create a riak dev droplet
   - ```./create-riak-droplet```
 * list-droplets - list all running droplets
   - ```./list-droplets```
 * list-images - list all of your images
   - ```./list-images```
 * destory-droplet - destroy the named droplet
   - ```./destory-droplet some_droplet_name```
