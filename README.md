![](https://circleci.com/gh/apigee/apigee-edge-quickstart-maven.svg?style=shield&circle-token=:circle-token)

# apigee-edge-quickstart-archetype

This is a Maven archetype for creating a shell project for 
[Apigee Edge](https://apigee.com/docs/api-services/content/what-apigee-edge) 
as a way to get familiar with Enterprise API management.

## Installing

This archetype is now available on Maven Central (since version 1), and as such can be used without any special steps.

## Creating a simple project

You can create a basic project using the archetype in the same way
that other archetypes are used:

```
> mvn archetype:generate                                     \
      -DarchetypeGroupId=io.apigee.build-tools.enterprise4g  \
      -DarchetypeArtifactId=apigee-edge-quickstart-archetype \
      -DarchetypeVersion=1
```

You will be asked some questions, including your Apigee Edge organization and
user credentials.  If you haven't yet, you will need to [create an 
Apigee developer account](https://accounts.apigee.com/accounts/sign_up).  It's free.

## Running your sample project

The project contains a simple proxy to the 
[Weather Underground](http://www.wunderground.com/weather/api/)
"Current Conditions" API.  You should need to do nothing more than build and deploy
to get started, if your credentials were entered correctly.

```
> mvn deploy
``` 

This will deploy your project to the environment you specified during setup ("test" by default).

### Using your sample project

The sample project exposes a `/weather` endpoint that can be used to search for
the current conditions of a particular city. The URL should look as follows:

```
https://<your-org>-test.apigee.net/weather/<state-code>/<city>.json
```

Where **`your-org`** is the org-id you specified during setup, **`state-code`** is a two-character state code like "CO" for Colorado, and the **`city`** is a standard city name, such as "Denver".

# What next?

You can build on this project to learn more about the Apigee Edge solution.

## More targets

**TODO**

## More proxies

**TODO**

## Add policies

**TODO**

## Add resources

**TODO**
