---
layout: post
title:  "Continuous Integration and Deployment with GitHub, Travis CI, Sauce Labs & Heroku"
date:   2016-1-22
excerptimagealt: "test-cases-passing"
excerptimage: /pics/build-passing.png
excerpt: Continuous Integration tool Travis CI seemlessly integrates with GitHub, Sauce Labs &amp; Heroku to automate
         building, testing and deployment - critical steps to automate web application development and improve productivity!
cheader: <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
         <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/gist-embed/2.0/gist-embed.min.js"></script> 

tag:
- Continuous Integration
- Continuous Deployment
- Travis CI
- SauceLabs
- GitHub
- Selenium
---

![build passing](/pics/build-passing.png)

Continuous Integration tool Travis CI seemlessly integrates with GitHub, Sauce Labs &amp; Heroku to automate
building, testing and deployment - critical steps to automate web application development and improve productivity!

After several **unsuccessful attempts** to automate build, test and deployment tasks for [Ask GitHub](http://askgithub.com) I stumbled on [Sam Saccone's blog 
post](http://samsaccone.com/posts/testing-with-travis-and-sauce-labs.html). I got inspired to try again. Few hours latter I had a working solution! 

This blog post deep dives into the Continuous Integration (CI) and Continuous Deployment (CD) configuration and setup for [Ask GitHub](http://askgithub.com).

> *"Continuous Integration (CI) is a development practice that requires developers to integrate code into a shared repository several times a day. Each check-in is then verified by an automated build, allowing teams to detect problems early"* Source:[ThoughtWorks](https://www.thoughtworks.com/continuous-integration)

> *"Continuous deployment can be thought of as an extension of continuous integration, aiming at minimizing lead time, the time elapsed between development writing one new line of code and this new code being used by live users, in production."* Source [Agile Alliance](http://guide.agilealliance.org/guide/cd.html)


## Architecture
![Architecture with GitHub, Travis CI, Sauce Labs and Heroku](/pics/CI-flowchart.png)

## Workflow
1. Developers are pushing code changes to GitHub  
2. Application is built and deployed on **a fresh staging environment** by Travis CI  
3. Selenium test cases are run remotely on **a fresh instance with developer defined OS & browser** by Sauce Labs  
4. Status of test cases are passed back to Travis CI  
5. If all the test cases pass the code is automatically deployed on Heroku  


## Check List
* Code on GitHub **public repository**
  - *Additional steps are required for private repository*
* Create a [Travis CI account](https://travis-ci.org/) (you can use your GitHub account)  
* Create a [Sauce Labs account](https://saucelabs.com/login)(you can use your GitHub account)  
  - Visit [Travis CI integration page](https://docs.saucelabs.com/ci-integrations/travis-ci/)  
  - Provide your GitHub repository name  
  - You will be provided a code block for  ```.travis.yml``` file and access tokens
* run `travis setup heroku` to generate the `api_key` for ```.travis.yml```
* Selenium test script with test cases  

## Step 1:
* Add ```.travis.yml``` file at the root of your repository to tell Travis CI what to build
* [AskGitHub .travis.yml](https://github.com/harishvc/githubanalytics/blob/master/.travis.yml)
* ```.travis.yml```  
<script src="https://gist.github.com/harishvc/0d0e624a868657dfe22a.js"></script>  
  - Lines 1-3: Provide the language and version for build
  - Lines 4-7: Code block from Sauce Labs
  - Lines 8-9: Sauce Labs addons
  - Lines 10-14: Build information    
     - ```requirements.txt``` provides a list of dependency modules  
     - ```python RunFlask.py worker.py &``` starts the newly build web application in the background  
  - Line 15: Test script location
  - Lines 16-18: Rule to build and test only on `master` branch
  - Lines 19-23: Steps to deploy on Heroku after test pass

## Step 2:
* Configure Selenium test script to work remotely on Sauce Labs VM
* [AskGitHub travis-testcases.py](https://github.com/harishvc/githubanalytics/blob/master/test/travis-testcases.py)
* `travis-testcases.py`
<script src="https://gist.github.com/harishvc/4dc256b0c5c2719b70dd.js"></script>
  - Lines 9 - 30: Initial setup
      - Lines 11 - 19: Setup to remotely test on Sauce Labs
      - Lines 23 - 24: Remote driver
      - Line 27: URL for testing
      - Line 29: Default test result
      - Line 20: Store messages
  - Line 32 - 62: Selenium test cases
      - Lines 34 - 38: Change test result status if test case fails
  - Lines 65 - 72: Clean up and status update
      - Lines 67 - 68: Print URL of job
      - Line 71: **Update test result status**. Status of the test result determines if the build is deployed! 
* Add badges to ```README.md```

## Step 3:
* Login to Travis CI 
* Add you GitHub repository
* Set environment variables for your repository
  - `SauceLogin`
  - `SauceAccessKey`
  - `PORT`

## Step 4:
* Commit ```.travis.yml``` and ```travis-testcases.py``` to GitHub
  

## Step 5:
* Visit Travis-CI and select your repository
  - watch the build and test log
![Travis-CI dashboard](/pics/travis-dashboard.png)

* Visit Sauce Labs and click on your build
   - **watch the video of the test!** 
![Saucelabs dashboard](/pics/saucelabs-dashboard.png)

* Visit ```README.md``` to view the status of test cases  
![build passing](/pics/build-passing.png)

## Observations
* Travis-CI provide **fresh staging environment** with hooks to test and deploy
* Sauce Labs comes to the rescue when you need to test on real browsers


## Related Articles
* [Testing in a real browser with Sauce Labs with Travis CI](http://samsaccone.com/posts/testing-with-travis-and-sauce-labs.html)
* [Travis CI & Heroku](https://blog.travis-ci.com/2013-07-09-introducing-continuous-deployment-to-heroku/)
* [Continuous Deployment](http://guide.agilealliance.org/guide/cd.html)
* [Continuous Integration is Dead](http://www.yegor256.com/2014/10/08/continuous-integration-is-dead.html)
* [Continuous Delivery Vs. Continuous Deployment: What's the Diff?](https://puppetlabs.com/blog/continuous-delivery-vs-continuous-deployment-whats-diff)
