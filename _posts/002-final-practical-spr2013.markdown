---
categories: CIS_2440_388
date: 2013/05/03 17:08:00
title: Thoughts on Spring 2013 Final Practical
---

General Thoughts on the Practical Exam
======================================

So in general, I think the exam went pretty well. It took me a while to debug
the automatic grade submission system, but I think it turned out well enough.

The main goal of the practical exam was to obviously test whether or not the
students could apply what they have learned, or even what they hadn't learned
in class. I didn't just allow everyone to use the internet and their books and
notes to be nice. I wanted to see who could make use of those resources to
overcome any obstacles that may come up.

The other goal was more subtle. I hoped to get one last lesson in. Actually,
more like I hoped to drive home a point about what was covered in the semester.
The way the exam was designed, was to demonstrate how different systems work
(or don't work) together. If any piece of the puzzle wasn't set up right, the
entire system would fail.

The grading script basically did the following:

1. Looked at the local system (the centos one), to make sure certain
   requirements were met (i.e. checks to see if required DNS records 
   existed, ssh keys exist, etc).

2. If all the local checks succeed, it then relied upon the DNS system to
   attempt to ssh to the ubuntu server with out a key.

3. Once logged into the ubuntu system, it put a php script on the ubuntu server
   in the directory it expects to be the document root for the webserver that
   is supposed to be running there.

4. If that succeeded, then it writes a small python script locally, which
   attempts to connect to the webserver, and requests the php script.

5. Both the php script and the python script have embedded in them a pre-shared
   secret key. The python script sends some pieces of information over to the
   php script (the student's name, email, etc) along with a randomly generated
   piece of information.

6. The php script takes the random submitted string, computes a crypto hash
   using the shared secret key, and then uses it's built in mail function to
   send out an email using the mail server installed on ubuntu.

7. If the mail function in php succeeds, then it returns the computed crypto
   hash value to the python script, and outputs nothing else.

8. The python script then compares the value given back by php, to the one it
   computed itself, and if it matches, then the python script knows that php
   must be working properly on the ubuntu machine.

9. At this point, if the python script finishes successfully, the grading system
   assumes that most everything should be working.

10. Lastly, the mail server on the ubuntu machine gets the email from php, and
    attempts delivery. If everything was set up correctly (DNS specifically),
    then the email gets delivered to my machine.


So you see, it's not just can we set up a bunch of stuff. Everything works
together. And most importantly, almost everything relies upon DNS. It's kind
of the keystone. Without it, nothing really works as expected. I hope this
practical demonstrates sufficiently this interconnectedness.
