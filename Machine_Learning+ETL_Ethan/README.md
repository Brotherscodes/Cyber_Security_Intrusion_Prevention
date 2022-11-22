# Cyber_Security_Intrusion_Prevention

## My Piece of the Puzzle:

  My role in my groups final project is to do the data cleaning, exploratory data analysis, and build a machine learning model. The end goal is to take the DDoS data that we acquired and mold it into a usable and more understandable data frame to give us a better idea how DDoS attacks work under the hood, and to build an intrusion detection system, using machine learning to identify outliers in the networking data to better catch DDoS attacks in the future. 

## Data Cleaning and EDA

  So when looking at the raw csv file I already knew that I had to chop it down a bit to make the data more digestible, so I first started looking missing values in the data and removing those rows. I came across 4 missing values, and figured since the dataset had 225745 data points, that 4 missing values won't be missed too much. The next order of business was picking out what columns out of the existing 85 that I want to stay with, so that the data frame wont have any unnecessary data that would just make the data frame overwhelming to look at. Considering that we we're looking for DDoS attack data we only kept some columns that hold identifiers, and data that could be attributed to DDoS attacks such as the Label, Timestamp, Source IP, Destination IP, Source Port, Destination Port, Flow ID, Flow Duration, Flow IAT Standard Deviation, Average Packet Size, and Backwards Packets Length Standard Deviation. 
  After cleaning the data and putting it all together in one data frame I began the exploratory data analysis. I began by gathering some numerical values from the cleaned DDoS data frame, and creating visualizations for the outliers in the data frame. After creating the visualizations I saw that the histogram for Backwards Packet Length Standard Deviation seem to have missing values, so I decided to investigate. I first pinpointed around what value it seems the data just cut off, and proceeded to create another data frame that isolated any data after that value. Then created a scatter plot using that new data frame I created and found that the data was there, but it was only a small amount of data that reached out past that certain value. Now with all the data in check I branched out to see what percentage of the data was considered DDoS attack data, or benign data so that I would be able to use the value as a contamination value for my machine learning model, and as a point of reference for the finished models predictions. Then to wrap the whole thing up I ended up saving the new cleaned data frame to a new csv file to pass on to my team mates. 
  
## Building the Machine Learning Model

  Since our goal for this analysis can be boiled down to outliers detection, I decided to build an Isolation forest to assist us. An Isolation forest is a unsupervised machine learning model that takes in an imbalanced dataset, and uses decision trees to locate and isolate outliers in a dataset. It works by creating a split in the data between the smaller values and larger values, and repeats this process down a decision tree to create all the possible splits that can produced with the data, effectively isolating outliers early in the process of creating the decision tree.
  

  ![Isolation_Forest](https://github.com/Brotherscodes/Cyber_Security_Intrusion_Prevention/blob/main/Machine_Learning%2BETL_Ethan/Resources/IsolationForest_png_1.png)


   My first step was to take the data frame created in the data cleaning, and EDA phase and to turn it into an imbalanced dataset by removing some of the DDoS data points and leaving more benign data points so that the model will have an easier time identifying outliers. Next was to turn our classification variable, which was a string, into a numerical value that the model can take. Finally I made a final data frame with the features more closely related to DDoS attacks. The model was finally completed when I performed a train, test, split and trained the model. Overall I believe the model was able to provide great results considering it was able to provide high precision, and recall, with a decent f1 score, meaning that the model was able to identify both outliers and inliers while providing a lot of those samples. To put it shortly the model was able to provide more relevant results.


  ![Accuracy_Report](https://github.com/Brotherscodes/Cyber_Security_Intrusion_Prevention/blob/d2e81d9a5b092643b10e8ee2a2efde4ad79543af/Machine_Learning+ETL_Ethan/Resources/final%20report.png)    


## Sources:

* https://scikit-learn.org/stable/modules/generated/sklearn.ensemble.IsolationForest.html

* https://towardsdatascience.com/how-to-perform-anomaly-detection-with-the-isolation-forest-algorithm-e8c8372520bc

* https://towardsdatascience.com/anomaly-detection-how-to-tell-good-performance-from-bad-b57116d71a10

* https://blog.paperspace.com/anomaly-detection-isolation-forest/#:~:text=Using%20Isolation%20Forest%2C%20we%20can,of%20profiling%20normal%20data%20points.

* https://www.kaggle.com/code/gauravsahani/anomaly-detection-with-isolation-forest/notebook

* https://ieeexplore.ieee.org/abstract/document/8438865
