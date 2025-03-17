# Overview

This is a wrapper around all the work that is being done in the HCSE project. The three projects have partially different tech stacks and different usage patterns. As a consequence, to offer some comfort to users, I wanted to add a wrapper that would make it easier to run all the stages without a lot of setup. You can also use this repository to understand how the others are set up and run.

# Usage

The easiest way is to simply invoke the skript 'run_all.sh'. This is designed to be done on Linux. I have not invested any effort on ensuring it does anywhere else. Most likely you can make it work on MacOS with some minor tweaks. 

First, the script will build the two rust repos. Since these repos involve a considerable amount of computation, a release build is preferred. Next, the script will install the dependencies of the website project. We don't need to create a build of the website since we will use it in development mode later. 

# Background

While this project is a search engine for research publication about cancer, please understand that the quality of that search is in no way a concern of this project. There are millions of algorithms out there - many of them likely better than what we do here. 

It has been my experience over the last years that several problems often occur in programming tutorials:
- They only deal with an example (todo app etc.) that is so simple that most of the important parts are missing.
- They only work if you use some sophisticated tools, frameworks or tech stacks.
- Parts of the tutorial are free and awesome, but once you dig deeper a "please pay" sign pops up.

To be completely clear: None of these things are bad. Building a simple app can be a great way to learn. Using good, specialized tools (and providing tutorials for them) is often a good idea. Why re-invent the wheel when a better tool exists? And lastly: Earning money off of hard work - and writing a good tutorial is hard work - is completely valid.

However, over the years, I have often profited off the great work of some great people. There are lots of great tools, tutorials and open source projects out there and many of them are really useful for me. This project is my effort to chip in. The entire project, all the code, articles and videos will be freely accessible.

Overall, this project (both in repositories and companion articles and videos) consists of 4 pieces:
- 0 - Introduction: In this piece, we will go over the logic behind all we're doing. This will contain some overarching points and some stylistic choices that will carry through the actual coding steps.
- 1 - Downloades: This coding project downloads data from the pubmed archive and prepares it for processing. The program is written in Rust.
- 2 - Processing: Here we do some numerics to show how to gain value from the data we prepared. Since part 1 and part 2 are pretty compute-intense, these are implemented in Rust with basic parallelism.
- 3 - Website: We use a website to visualize the results of the analysis. We also do a deployment of the website and discuss what we have learned from the project and how this can be applied. 

Most of all I wish that this will be fun for you. As stated above, this isn't a perfet implementation of a cancer search engine, that is merely an old project idea I use here as a canvas.



