# Cyber_Security_Intrusion_Prevention

## Project Overview:

We are using a `machine learning model` to detect factors that contribute to `DDoS` cyber attacks in an effort to limit the vulnerability of the average consumer.

<br>

<p align=center>
<img src=Images/cybersecurity.jpg height=350 width=800>

<br>

## Why did we chose this topic? 


Living in a digital age, Cybersecurity is not only necessary but crucial. Preparedness is key to swiftly detecting and remedying an attack. Preventative measures can help secure your personal information and time from a legitimate cyber threat. We chose this topic to inform the general public of DDoS attacks, the common variables associated, and preventative measure they can take.

<br>


Link to Presentation Slides: [Project Slides](https://docs.google.com/presentation/d/1BGkvzoi-ZbRzThANntzPU5MF0rSk4ARFwnCoBVOYQQ4/edit?usp=sharing)
<br>

<p align=center>
<img src=Images/project_slides.png height=500 width=625>

Link to Tableau Dashboard: [Tableau Dashboard](https://public.tableau.com/app/profile/dylan.brothers/viz/FinalProjectDashboard_16685639459140/FinalProjectDashboard?publish=yes)

<p align = center>
<img src= Images/dashboard.png height=500>

## Questions we are seeking to answer with our data:

1. How does a DDoS attack happen? 

2. What does a DDoS attack affect?

3. Who is the target audience for DDoS attacks?

4. What preventative measures can be taken to protect the average user from a malicious DDoS attack?

## Description of our source data:

- Intrusion Detection Evaluation Dataset (CIC-IDS2017) from the Canadian Institute for Cybersecurity.

Description taken from [Data Source](https://www.unb.ca/cic/datasets/ids-2017.html):

"The CICIDS2017 dataset consists of labeled network flows, including full packet payloads in pcap format, the corresponding profiles and the labeled flows (GeneratedLabelledFlows.zip) and CSV files for machine and deep learning purposes."

## Description of Data Exploration: 

* Explored numerical values of the cleaned DDoS dataframe.

* Checked or outliers in the dataframe by creating and analyzing visualizations.

* Explored each visualization for possible errors and anomalies.

* Separated data to find the percentage of DDoS data and Benign data.

## Description of Data Analysis phase: 

* Explore to find missing values and remove them.

* Gather what columns would be useful to detect DDoS attacks.

* Build a dataframe using the data attributed to DDoS attacks.



## Cited_Resources: 

- `Iman Sharafaldin, Arash Habibi Lashkari, and Ali A. Ghorbani, “Toward Generating a New Intrusion Detection Dataset and Intrusion Traffic Characterization”, 4th International Conference on Information Systems Security and Privacy (ICISSP), Portugal, January 2018`

- [Link to Data Source](https://www.unb.ca/cic/datasets/ids-2017.html)

- CISA. (2009, November 4). Understanding Denial-of-Service Attacks. National Cyber Awareness System. Retrieved November 1, 2022, from https://www.cisa.gov/uscert/ncas/tips/ST04-015

## Software: 

- Tableau Public
- VS Code
- Pandas
- Python
- PostgresSQL

## Data: 

- Friday-WorkingHours-Afternoon-DDos.pcap_ISCX.csv ([View/Download](https://github.com/Brotherscodes/Cyber_Security_Intrusion_Prevention/blob/main/Resources/Friday-WorkingHours-Afternoon-DDos.pcap_ISCX.csv))

- Cleaned_DDoS_Dataframe.csv  ([View/Download](https://github.com/Brotherscodes/Cyber_Security_Intrusion_Prevention/blob/main/Resources/Cleaned_DDos_DataFrame.csv))
