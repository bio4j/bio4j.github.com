---
comments: false
author: Pablo Pareja
date: 2011-12-08 16:37:17
layout: post
slug: bio4j-aws-cloudformation-your-own-fresh-baked-db-in-less-than-a-minute
title: Bio4j + AWS CloudFormation = your own fresh baked DB in less than a minute!
wordpress_id: 299
categories:
- AWS
tag:
- aws
- cloudformation
- development
- ebs
- release
---

**UPDATE:** You can now use this template from **all zones but `ap-southeast-1`! **


Hi!

So this week it was time to finally start using **[CloudFormation](http://aws.amazon.com/cloudformation/)** together with Bio4j. For those not familiar with this **[AWS](http://aws.amazon.com/)** service, quoting from their site: 

> AWS CloudFormation gives developers and systems administrators an easy way to create and manage a collection of related AWS resources, provisioning and updating them in an orderly and predictable fashion.

This is really useful because thanks to CloudFormation templates, you don't have to worry about manually launching an instance, create a volume, attach it, do some stuff, and then free the resources... **You can encapsulate all this tasks in a template** reducing all the tasks to **just two**: 

1. **create **the stack
2. **delete **the satck whenever you are done with it

This template is available in the following address:

- [**Bio4jBasicInstanceTemplate.txt**](https://s3-eu-west-1.amazonaws.com/bio4j-public/Bio4jBasicInstanceTemplate.txt)

So, let's see how easy it actually is to create your stack. First you should go to the `CloudFormation` tab in the amazon console and click the button: `Create New Stack`:

{% img http://blog.bio4j.com/wp-content/uploads/2011/12/CloudFormationCreateStackScreenShot.jpg %}

You will see this new window now where you should choose the option **Provide a template URL'** and paste there the URL I just provided before. You should also give your stack a name filling the field `Stack name`. Then click `Continue`.

{% img http://blog.bio4j.com/wp-content/uploads/2011/12/CreateStackSecondStepScreenShot.jpg %}

Ok, now you should be seeing this:

{% img http://blog.bio4j.com/wp-content/uploads/2011/12/CreateStackThirdStepScreenShot1.jpg %}

Provide then your key-pair name, availability zone, and finally enter the type of instance you want to launch.
Once you clicked continue you'll see a review of all the parameters you entered so far like:

{% img http://blog.bio4j.com/wp-content/uploads/2011/12/CreateStackFourthStepScreenShot1.jpg %}

Check everything is as you wish and click continue.
You should be seeing then something like this:

{% img http://blog.bio4j.com/wp-content/uploads/2011/12/CreateStackFifthStepScreenShot.jpg %}

Now you just have to wait for about 30 seconds until after refreshing the stack state changes to green color and says "CREATE_COMPLETE". Click on the output tab and you will see the IP address you need to connect with SSH to your new instance.

{% img http://blog.bio4j.com/wp-content/uploads/2011/12/CreateStackSixthStepScreenShot.jpg %}

So now you just have to connect to your instance and you should have your fresh backed Bio4j DB under the folder `/mnt/bio4j_volume/bio4jdb` ;)

Whenever you are done, just select delete stack in the amazon console and don't worry about terminating your instance or deleting your volume, they will do it for you!

> The only thing you have to do is umount the volumes you have attached, it seems that CloudFormation cannot do that for you right now...

[**@pablopareja**](http://www.twitter.com/pablopareja)
