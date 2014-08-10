## helper utils for digital ocean

Some scripts to work with digital ocean

## Setup

 * Go to https://cloud.digitalocean.com/settings/applications
 * Create a personal access token
 * Add the token as an environment variable DIGITALOCEAN_TOKEN
   - Create a .env file for autoloading -- not used if environment variable already set
   - or add to some other file and load with ```. FILENAME```
  ```
  export DIGITALOCEAN_TOKEN=129o718927c37439aljskfdlajsd8fcca6e643ab96b0c299a9a4450ea30c4894
  ```

## Utils


 * create-riak-droplet <droplet-config> - create a riak dev droplet based config file info
   - ```./create-riak-droplet config/ubuntu-12.04.yml```
 * list-droplets - list all running droplets
   - ```./list-droplets```
 * list-images - list all of your images
   - ```./list-images```
 * list-keys - show ssh keys
   - ```./list-keys```
 * destory-droplet - destroy the named droplet
   - ```./destory-droplet some_droplet_name```

## Configuration

Droplet configuration format:
 * base_name -- name of the new droplet
 * region -- digital ocean region
 * image_id -- public or private image id (use list-images to find it)
 * size -- digital ocean droplet size
 * private_networking -- do you want a public and private IP (and NIC) [defaults to true]
 * ssh_keys -- ssh keys to add to new droplet (use list-keys to find them)

Example:
```
:base_name: centos-6-5
:region: nyc2
:image_id: '3448641'
:size: 512mb
:private_networking: true
:ssh_keys:
  - 163567
  - 59637
  - 59636
  - 60568
```

## Contributing

 1. Fork it ( https://github.com/vulk/digitalocean-utils/fork )
 1. Create your feature branch (git checkout -b my-new-feature)
 1. Commit your changes (git commit -am 'Add some feature')
 1. Push to the branch (git push origin my-new-feature)
 1. Create a new Pull Request

## License

[The MIT License (MIT)](http://vulk.mit-license.org)

Copyright (c) 2014 Vulk <[wolfpack@vulk.co](mailto:wolfpack@vulk.co)>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

