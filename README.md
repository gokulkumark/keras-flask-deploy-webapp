# Deploy ECG-Arrhythmia-classification Keras Model with Flask as Web App in 10 Minutes

[![](https://img.shields.io/badge/python-3.5%2B-green.svg)]()
[![GPLv3 license](https://img.shields.io/badge/License-GPLv3-blue.svg)](http://perso.crans.org/besson/LICENSE.html)

> A pretty and customizable web app to deploy ECG-Arrhythmia-classification model with ease
https://github.com/ankur219/ECG-Arrhythmia-classification

## Getting started in 10 minutes

- Clone this repo 
- Install requirements
- Run the script
- Go to http://localhost:5000
- Done! :tada:

------------------

## Run with Docker

With **[Docker](https://www.docker.com)**, you can quickly build and run the entire application in minutes :whale:

Step 1: Install Docker https://docs.docker.com/engine/installation/

Step 2: Instal docker-compose https://docs.docker.com/compose/install/
```shell
# 1. First, clone the repo
$ git clone https://github.com/gokulkumark/keras-flask-deploy-webapp.git
$ cd keras-flask-deploy-webapp

# 2. Build Docker image
$ docker-compose build

# 3. Run!
$ docker-compose run
```

Open http://localhost:5000 and wait till the webpage is loaded.

## Local Installation

It's easy to install and run it on your computer.

```shell
# 1. First, clone the repo
$ git clone https://github.com/gokulkumark/keras-flask-deploy-webapp
$ cd keras-flask-deploy-webapp

# 2. Install Python packages
$ pip install -r requirements.txt

# 3. Run!
$ python app.py
```

Open http://localhost:5000 and have fun. :smiley:

------------------

## Customization

It's also easy to customize and include your models in this app.

<details>
 <summary>Details</summary>

### Use your own model

Place your trained `.h5` file saved by `model.save()` under models directory.

Check the [commented code](https://github.com/mtobeiyf/keras-flask-deploy-webapp/blob/master/app.py#L37) in app.py.

### Use other pre-trained model

See [Keras applications](https://keras.io/applications/) for more available models such as DenseNet, MobilNet, NASNet, etc.

Check [this section](https://github.com/mtobeiyf/keras-flask-deploy-webapp/blob/master/app.py#L26) in app.py.

### UI Modification

Modify files in `templates` and `static` directory.

`index.html` for the UI and `main.js` for all the behaviors.

</details>


## Deployment

To deploy it for public use, you need to have a public **linux server**.

<details>
 <summary>Details</summary>
  
### Run the app

Run the script and hide it in background with `tmux` or `screen`.
```
$ python app.py
```

You can also use gunicorn instead of gevent
```
$ gunicorn -b 127.0.0.1:5000 app:app
```

More deployment options, check [here](https://flask.palletsprojects.com/en/1.1.x/deploying/wsgi-standalone/)

### Set up Nginx

To redirect the traffic to your local app.
Configure your Nginx `.conf` file.

```
server {
  listen  80;

  client_max_body_size 20M;

  location / {
      proxy_pass http://127.0.0.1:5000;
  }
}
```

</details>

## Future

- [ ] Support detection and segmentation models

## More resources

[Building a simple Keras + deep learning REST API](https://blog.keras.io/building-a-simple-keras-deep-learning-rest-api.html)
