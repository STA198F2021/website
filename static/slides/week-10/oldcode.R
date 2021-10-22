<!---
  
  ## Alcoholism Risk in 9/11 Responders
  
  
  Among firefighters and other "first responders" to the World Trade Center on September 11, 2001, there have been reports of increased alcohol-related difficulties (e.g., DUI). A survey of NYC firefighters (Bacharach, 2004) found the following.

```{r alcrisk, echo=FALSE}
alc911 = as.tibble(data.frame(Alcrisk=c(rep("High Risk",419),rep("Low Risk",1234)), Respond911=as.factor(c(rep("9/11 Responder",309),rep("9/11 Non-Responder",110),rep("9/11 Responder",793),rep("9/11 Non-Responder",441)))))
```

```{r table}
alc911$Respond911=relevel(as.factor(alc911$Respond911),ref="9/11 Responder")

library(kableExtra)
table(alc911) %>% kable()
``` 

Is alcoholism risk related to 9/11 responder status?
  
  ---
  
  ```{r alcplot}
alc911 %>%
  ggplot(aes(y = Respond911, fill = Alcrisk)) +
  geom_bar(position = "fill") +
  labs(x="Proportion",
       title="Alcoholism Risk by 9/11 Responder Status",
       y = "911 Responder Status") + 
  scale_fill_manual(values=c("#638B27","#BBA2B6"))

```

---
  
  Here the predictor, $X$, is 911 responder status, and the response, $Y$, is alcoholism risk level.  We can look at the % high risk by 911 responder status.

```{r dataview}
table(alc911) %>% kable()
```

9/11 responders:  $\frac{309}{309+793}=\frac{309}{1102}=28\%$ high risk 

Other firefighters:  $\frac{110}{110+441}=\frac{110}{551}=20\%$ high risk 

---
  
  ## $\chi^2$ Test
  
  Because we do have a fairly large sample, we can test our null hypothesis that alcoholism risk is unrelated to 9/11 responder status using a $\chi^2$ test or Fisher's exact test.  The $\chi^2$ test is valid in sufficiently large samples with cell counts all $>10$ for an 0.05-level test; Fisher's exact test is always valid.  However, for *very* large samples, Fisher's exact test can still be too computationally expensive, and the $\chi^2$ test has nice connections to the logistic regression models we will study later in the course.

In addition, the chi-squared test has a very nice motivation in terms of comparing observed proportions in the data to the proportions we would expect if $H_0$ were true.

---

## $\chi^2$ test

```{r dataviewagain, echo=FALSE}
table(alc911) %>% kable()
```

In our table, we can see that $\frac{309+793}{309+793+110+441} =\frac{2}{3}$ of the study participants were 9/11 responders, and $\frac{309+110}{309+110+793+441}=0.2535$ were at high risk of alcoholism.


  
  ## Visualize Null Distribution
  
  .panelset[
    .panel[.panel-name[Plot]
           ```{r ref.label = "seedist", echo = FALSE, warning = FALSE}
           ```
    ]
    .panel[.panel-name[Code]
           
           ```{r seedist, fig.show="hide"}
           null_distribution_simulated <- alc911 %>%
             specify(Alcrisk ~ Respond911, success = "High Risk") %>%
             hypothesize(null = "independence") %>%
             generate(reps = 5000, type = "permute") %>%
             calculate(stat = "Chisq")
           
           null_distribution_theoretical <- alc911 %>%
             specify(Alcrisk ~ Respond911, success = "High Risk") %>%
             hypothesize(null = "independence") %>%
             calculate(stat = "Chisq")
           
           null_distribution_simulated %>%
             visualize() +
             shade_p_value(chisq_test,direction="greater")
           
           alc911 %>%
             specify(Alcrisk ~ Respond911, success = "High Risk") %>%
             hypothesize(null = "independence") %>%
             visualize(method = "theoretical") + 
             shade_p_value(as.numeric(chisq_stat), direction = "greater")
           ```
    ]
  ]

--->
  