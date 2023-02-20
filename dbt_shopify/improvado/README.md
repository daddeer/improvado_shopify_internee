### IMPROVADO INTERNEE PROYECT

 The purpose of this project is to transform data from various sources into a clean, reliable, and well-structured format that can be easily queried and analyzed.

### GETTING STARTED

 REQUIREMENTS

 -python 3 (latest version)
 -pip
 -dbt-bigquery  ## after installing python and pip run -pip install dbt-bigquery or any other warehouse plugin 
 -dbt.utils     ## defined in packages.yml to install run - dbt deps


### BEFORE ANYTHING

be sure to iniciate the virtual enviroment!

If not installed please run 
 - python -m venv dbt-env     

documentation in case you are working on a different operating system:
https://docs.getdbt.com/faqs/core/install-pip-best-practices.md#using-virtual-environments

try running the following commands to start.

-cd dbt_shopify                   #to change the directory where the virtual enviroment is located 
-dbt-env/Scripts/activate         #to activate the virtual enviroment, A green (dbt-env) will show up 
-cd improvado                     #to move where dbt is located and be able to run commands like dbt run and test

### PROYECT STRUCTURE
improvado/
│
├── models/
│   │
│   ├── models_transform/                  ## Reorganize the tables' structure to facilitate improved analysis and querying 
│   │   ├── incident comparison.sql
│   │   ├── incident_pivot.sql
│   ├── src_bigquery.yml/                  ## Specify the data sources and extract only the required columns from the raw data.
│   │   ├── src_austin_incidents_2008
│   │   ├── src_austin_incidents_2010
│   │   ├── src_austin_incidents_2016
│   │   ├── src_incidents.yml
│   ├── stg_models/                        ## cleans unnecesary characters from columns
│   │   ├── stg_incidents_2008
│   │   ├── stg_incidents_2010
│   │   ├── stg_incidents_2016
│   │   └── stg_incidents_grand_select     ## groups all the tables in one
│   └── schema.yml                         ## declares tests performed in the proyect
│
├── dbt_project.yml                        ## defines the proyect directories, its generated along with the proyect
├── packages.yml                           ## defines the packages you install. documentation: https://hub.getdbt.com
profiles.yml                               ## usually located C:\Users\USER\.dbt\profiles.yml to define proyect and target


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
