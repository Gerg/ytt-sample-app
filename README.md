# ytt-sample-app
"Hello World" app that uses YTT templates for customization.

## Usage

Requires [ytt](https://github.com/vmware-tanzu/carvel-ytt).

1. Render the config file: `$ ytt -f data.yml=<(echo $'#@data/values\n---\nname: World') -f config_template.yml > config.yml`
1. Install dependencies: `$ bundle install`
1. Run the app: `$ bundle exec ruby app.rb`
