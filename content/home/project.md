+++
# Homepage
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 70  # Order that this section will appear in.

title = "Project"
subtitle = "Showcase your inner data scientist"
+++

## TL;DR

Pick a global health data set ...

...and do something informative with it. You will work in teams of 2-3 people of your own choosing. That is your final project in a nutshell. More details below.

## May be too long, but please do read

The final project for this class will consist of analysis on a data set of your own choosing. The data set may already exist, or you may collect your own data using a survey or by conducting an experiment. You can choose the data based on your interests or based on work in other courses or research projects. The goal of this project is for you to demonstrate proficiency in the techniques we have covered in this class (and beyond, if you like) and apply them to a novel data set in a meaningful way.

The goal is not to do an exhaustive data analysis i.e., do not calculate every statistic and procedure you have learned for every variable, but rather let me know that you are proficient at asking meaningful questions and answering them with results of data analysis, that you are proficient in using R, and that you are proficient at interpreting and presenting the results. Focus on methods that help you begin to answer your research questions. You do not have to apply every statistical procedure we learned. Also, critique your own methods and provide suggestions for improving your analysis. Issues pertaining to the reliability and validity of your data, and appropriateness of the statistical analysis should be discussed here.

The project is very open ended. You should create some kind of compelling visualization(s) of these data in R. There is no limit on what tools or packages you may use, but sticking to packages we learned in class (`tidyverse`) is recommended. You do not need to visualize all of the data at once. A single high quality visualization will receive a much higher grade than a large number of poor quality visualizations. Also pay attention to your presentation. Neatness, coherency, and clarity will count. All analyses must be done in RStudio, using R. References must be cited, including (known) prior analyses of the data.

### Data

In order for you to have the greatest chance of success with this project it is important that you choose a manageable data set. This means that the data should be readily accessible and large enough that multiple relationships can be explored. As such, your data set must have at least 50 observations and say 10-20 variables (exceptions can be made, but you must speak with me first). The variables in the data should include variables of multiple types (e.g., categorical and continuous).

If you are using a data set that comes in a format that we haven't encountered in class, make sure that you are able to load it into R as this can be tricky depending on the source. If you are having trouble ask for help before it is too late.

**Note on reusing data sets from class:** Do not reuse data sets used in examples, homework assignments, or labs in the class.

**The data you use must be able to be shared publicly.** Students will be allowed to post their projects after the end of the course on their own GitHub repos in order to be competitive for summer internships and other opportunities. You will not be able to use data for the project that cannot be posted online for public viewing.

**You cannot make substantial changes to the proposed data set or questions of interest after the proposal revision deadline.**  

Below are a list of data repositories or related events that might be of interest to browse. You're not limited to these resources, and in fact you're encouraged to venture beyond them. But you might find something interesting there:

- [UN World Data Forum: Oct 3-7!](https://unstats.un.org/unsd/undataforum/)
- [UN Sustainable Development Goals Indicators Database](https://unstats.un.org/sdgs/unsdg)
- [United Nations Data](http://data.un.org/)
- [United Nations Statistics Division](https://unstats.un.org/home/)
- [TidyTuesday](https://github.com/rfordatascience/tidytuesday)
- [Global Health Data Exchange](http://ghdx.healthdata.org/ihme_data)
- [WHO Data Collections](https://www.who.int/data/collections)
- [Demographic and Health Surveys Data](https://dhsprogram.com/data/)
- [World Bank Health Data](https://data.worldbank.org/topic/8)
- [WHO/UNICEF Joint Monitoring Program on Water Supply, Sanitation, and Hygiene](https://washdata.org/data)
- [UN Refugee Data Finder](https://www.unhcr.org/refugee-statistics/download/?url=E1ZxP4)
- [Kaggle datasets](https://www.kaggle.com/datasets)
- [OpenIntro datasets](http://openintrostat.github.io/openintro/)
- [Awesome public datasets](https://github.com/awesomedata/awesome-public-datasets)
- [Youth Risk Behavior Surveillance System (YRBSS)](https://chronicdata.cdc.gov/Youth-Risk-Behaviors/DASH-Youth-Risk-Behavior-Surveillance-System-YRBSS/q6p7-56au)
- [PRISM Data Archive Project](https://www.icpsr.umich.edu/icpsrweb/content/ICPSR/fenway.html)
- [Harvard Dataverse](https://dataverse.harvard.edu/)
- If you know of others, let me know, and we'll add here...

### Deliverables

0. Team membership - due Friday, October 8 in class
1. Proposal     - due Monday, October 11, at 11:59 pm
2. Proposal revision     - due Monday, October 18, at 4:00 pm (optional)
3. Write-up     - due Tuesday, November 16, at 11:59pm
4. Presentation - Wednesday, November 17 or Friday, November 19, in class (possibly some Monday, November 22 in class)

#### Proposal

The purposes of the proposal are (1) to help you get started early with thinking about the project, reading relevant literature, and formulating your scientific questions, and (2) to ensure the data you wish to analyze, methods you wish to use, and scope of your analysis are feasible and set you up for success with your project.

- Section 1 - Introduction: The introduction should introduce your general 
research question and your data (where it came from, how it was collected, 
what are the cases, what are the  variables, etc.). The motivation for your research question should be clear, with citations to relevant literature as appropriate.

- Section 2 - Data: Place your data and codebook in the `/data` folder. Then print out the output of 
`glimpse()` or `skim()` of your data frame.

- Section 3 - Data analysis plan:
  - The outcome (response, Y) and predictor (explanatory, X) variables you will use to answer your question.
  - The comparison groups you will use, if applicable.
  - Very preliminary exploratory data analysis, including some summary statistics 
and visualizations, along with some explanation on how they help you learn more 
about your data. (You can add to these later as you work on your project.)
  - The statistical method(s) that you believe will be useful in answering your 
question(s). (You can update these later as you work on your project.)
  -  What results from these specific statistical methods are needed to support 
your hypothesized answer?

The project proposal can be no more than 3 pages. You can check a 
print preview to confirm length. 


#### Presentation

5 minutes maximum, and each team member should say something substantial. You can either present live or pre-record and submit your video to be played during the presentation day.

Prepare a slide deck using the template in your repo. This template uses a package called `xaringan`, and allows you to make presentation slides using R Markdown syntax. There isn't a limit to how many slides you can use, just a time limit (5 minutes total). Each team member should get a chance to speak during the presentation. Your presentation should not just be an account of everything you tried ("then we did this, then we did this, etc."), instead it should convey what choices you made, and why, and what you found.

Before you finalize your presentation, make sure your chunks are turned off with `echo = FALSE`. 

Presentation schedule: Presentations will take place during the third week of November (we may have some the Monday of Thanksgiving week). You can choose to do your presentation live or pre-record it. During class you will watch presentations from other teams and provide feedback in the form of peer evaluations. The presentation line-up will be generated randomly.

#### Write-up

Along with your presentation slides, we want you to provide a summary of your project in report form.

This write-up, which you can also think of as an summary of your project, should provide information on the dataset you're using, your research question(s), your methodology, and your findings. Think of it as filling out your project proposal with all the interesting details.  Additional information will be provided closer to the project deadline regarding formatting and other tips. The page limit of this write-up is 10 pages, including figures and references.

#### Repo organization

The following folders and files in your project repository:

* `presentation.Rmd` + `presentation.html`: Your presentation slides
* `report.Rmd` + `report.html`: Your write-up
* `/data/*`: Your dataset in csv or RDS format, in the `/data` folder.
* `/proposal/`: Your proposal from earlier in the semester

Style and format does count for this assignment, so please take the time to make sure everything looks good and your data and code are properly formated.

## Tips

- You're working in the same repo as your teammates now, so merge conflicts will happen, issues will arise, and that’s fine! Commit and push often, and ask questions when stuck.
- Review the marking guidelines below and ask questions if any of the expectations are unclear.
- Make sure each team member is contributing, both in terms of quality and quantity of contribution (we will be reviewing commits from different team members).
- Set aside time to work together and apart (physically).
- When you're done, review the documents on GitHub to make sure you're happy with the final state of your work. Then go get some rest!
- Code: In your presentation your code should be hidden (`echo = FALSE`) so that your document is neat and easy to read. However your document should include all your code such that if I re-knit your R Markdown file I should be able to obtain the results you presented. **Exception:** If you want to highlight something specific about a piece of code, you're welcomed to show that portion. 
- Teamwork: You are to complete the assignment as a team. All team members are expected to contribute equally to the completion of this assignment and team evaluations will be given at its completion - anyone judged to not have sufficient contributed to the final product will have their grade penalized. While different teams members may have different backgrounds and abilities, it is the responsibility of every team member to understand how and why all code and approaches in the assignment works.

## Marking

Total                          | 100 pts
-------------------------------|--------
Proposal                       | 10 pts
Presentation                   | 10 pts
Write-up                       | 70 pts
Reproducibility and organization | 10 pts


### Criteria

- Content - What is the quality of research and/or policy question and relevancy of data to those questions?
- Correctness - Are statistical procedures carried out and explained correctly?
- Writing and Presentation - What is the quality of the statistical presentation, writing, and explanations?
- Creativity and Critical Thought - Is the project carefully thought out? Are the limitations carefully considered? Does it appear that time and effort went into the planning and implementation of the project?

### Team peer evaluation

You will be asked to fill out a survey where you  will report a contribution percentage for each team member. Filling out the survey is a prerequisite for getting credit on the team member evaluation.If you are suggesting that an individual did less than their fair share of the work, please provide some explanation. When peer scores indicate a team member did not do their fair share of work, proportional grading may be used (e.g., half the fair share yields half the points expected).

### Late work policy

- There is no late submission / make up for the presentation. You must be in class on the day of the presentation to get credit for it *or* pre-record and submit your presentation by 9am in the morning of the presentations.

- The late work policy for the write-up is 5% of the maximum obtainable mark per calendar day up to seven calendar days after the deadline. If you intend to submit work late for the project, you must notify the course organizer before the original deadline as well as as soon as the completed work is submitted on GitHub.
