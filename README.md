# CookieCutter Template Dataform Projects

## Project

This project was developed a create templates in Dataform using the CookieCutter.

## Intro

### What's Dataform?

Dataform is an application to manage data in BigQuery, Snowflake, Redshift, and other data warehouses. It enables data teams to build scalable, tested, SQL based data transformation pipelines using version control and engineering inspired best practices.

* Documentation: [https://docs.dataform.co/](https://docs.dataform.co/)

### What's CookieCutter?

A command-line utility that creates projects from cookiecutters (project templates).

* Documentation: [https://cookiecutter.readthedocs.io/en/1.7.2/index.html](https://cookiecutter.readthedocs.io/en/1.7.2/index.html)

## Usage

First, clone a Cookiecutter project template:

```bash
    $ git clone git@github.com:oliveiraJessica/cookiecutter-dataform.git
```

Install the latest Cookiecutter if you haven't installed it yet (this requires Cookiecutter 1.4.0 or higher):

```bash
    $ pip install -r requirements.txt
```

Then generate your project from the project template:

```bash
   $ cookiecutter cookiecutter-dataform/
```

The only argument is the input directory. (The output directory is generated by rendering that, and it can't be the same as the input directory.)


## Best Practices

This project considers best practice  to keep development, piloto and production data separated. 


## Folder Structure

### Input

The project is structured in the following main folders:

```shell
    ├── {{coockiecutter and "root"}} 
        ├── definitions
            ├── {%- if cookiecutter.enum_folders == "yes" -%} 00_{% endif %}source  
            ├── {%- if cookiecutter.enum_folders == "yes" -%} 01_{% endif %}staging 
            ├── {%- if cookiecutter.enum_folders == "yes" -%} 02_{% endif %}tests
            ├── {%- if cookiecutter.enum_folders == "yes" -%} 03_{% endif %}reports
        ├── includes   
        ├── dataform.json
        ├── environments.json
        ├── run.sh  
    ├── hooks 
        ├── post_gen_project.sh   
        ├── pre_gen_project.sh    
    ├── cookiecutter.json 
    ├── LICENSE 
    ├── README.md   
    ├── requirements.txt   
```

* **{{coockiecutter and "root"}}**: Directory names to template
  * **definitions**: This dataset is where you add the SQLX files that will define new tables, views, assertions (data quality tests) and other SQL operations that will run in your warehouse.
    * **{%- if cookiecutter.enum_folders == "yes" -%} 00_{% endif %}source**:This dataset specifies options that can be applied to tables using the BigQuery configuration parameter.
    * **{%- if cookiecutter.enum_folders == "yes" -%} 01_{% endif %}staging**: This an intermediate data transformation dataset.
    * **{%- if cookiecutter.enum_folders == "yes" -%} 02_{% endif %}tests**: This is a dataset for unit tests and assertions.
    * **{%- if cookiecutter.enum_folders == "yes" -%} 03_{% endif %}**:This is a dataset to report the facts and dimensions from the model.
  * **includes**: This is a directory where you can add JavaScript files and define variables and functions that you can use across your entire project.
  * **dataform.json**: This configuration file has dataform folders, warehouse and name project.
  * **environments.json**:  This configuration file has environments : DEVELOP, PILOTO and PRODUCTION.
  * **run.sh**: Shell script rename file *dataform_${environments}* to *dataform.json*. 
* **hooks**: Shell scripts that run before and after project is generated. 
  * **post_gen_project.sh**: Shell scripts that run after your project is generated.
  * **pre_gen_project.sh**: Shell scripts that run before  your project is generated.
* **cookiecutter.json**: File that defines the template execution variables.
* **LICENSE**: License as chosen on the command-line.
* **README.md**: The top-level README for developers.
* **requirements.txt**: Dependences your project.

### Output

While generating the project, it is possible to send some configuration parameters, such as the names of the environments or the possibilities of numbering the folders within definitions

This project can generate two outputs: an output with numbered folders and other with unnumbered folders: 

* Output with numbered folders:

```shell
    ├── project_name                        
        ├── definitions
            ├── 00_source      
            ├── 01_staging   
            ├── 02_tests 
            ├── 03_reports 
        ├── includes   
        ├── dataform.json
        ├── dataform_develop.json
        ├── dataform_piloto.json
        ├── dataform_production.json
        ├── environments.json
    ├── README.md              
```

* Output with unnumbered folders:
  
```shell
    ├── project_name                        
        ├── definitions
            ├── source      
            ├── staging   
            ├── tests 
            ├── reports 
        ├── includes   
        ├── dataform.json
        ├── dataform_develop.json
        ├── dataform_piloto.json
        ├── dataform_production.json
        ├── environments.json
    ├── README.md              
```