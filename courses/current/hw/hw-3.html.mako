<%inherit file="_templates/site.mako" />
<article class="page_box">
<%self:filter chain="rst">

##########
Homework 3
##########

:Author: Doug Stanley <dstanle@uakron.edu>
:Date: 4/23/2013
:Updated On: 4/23/2013
:Due Date: **4/30/2013**


Assignment
==========

For this assignment, you will send me a "spoofed" email. That is, an email
that appears to be coming from some one else.

To do this, you will use telnet or netcat to type raw SMTP commands and
manually communicate with an email server. I also want you to fake the
X-Mailer and X-Sender headers.

As for whom you will be spoofing, I'd like you to select something that's
obviously fake, but not me. Don't send me email from myself. Use something
else, like Abraham Lincoln or Kermit The Frog. Make sure and use the From mail
header so that you can specify a fake name AND fake email address.

In the body of the email, you will specify the following:

    Homework #3 submission for YOUR NAME <your_Email@provider.tld>

Also, make sure to specify a subject line header. Be creative. Also, feel
free to fake any other header.

For this assignment you can connect to the mail server at:

* **cis2440.homeunix.org** port **2500**

* Send the email to **doug@cis2440.homeunix.org**

What to Submit
==============

* An email sent using telnet or netcat

* The following email headers should be specified:

  * X-Mailer:

  * X-Sender:

  * From:

  * To:

  * Subject:

* Specify an obviously fake name and email address in the From and X-Sender
  header.

* Specify a made up mail user agent, or just specify telnet for X-Mailer

* Make sure the body of the email has the appropriate information.

Questions
=========

Any questions, comments, or concerns about this assignment, please email me
(dstanle@uakron.edu) or see me before or after class.


Submission
==========

For this assignment, connect to the mail server at **cis2440.homeunix.org**
port **2500**. You will use SMTP commands to send an email meeting the above
requirements. Send the email to **doug@cis2440.homeunix.org**

</%self:filter>
</article>
