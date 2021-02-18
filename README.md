# CookieCutter Template Dataform Projects

[![python](https://img.shields.io/pypi/pyversions/cookiecutter.svg)](https://pypi.org/project/cookiecutter/)

## Project

This project was developed a create project templates in Dataform using the CookieCutter.

## Intro

### What's Dataform?

Dataform is an application to manage data in BigQuery, Snowflake, Redshift, and other data warehouses. It enables data teams to build scalable, tested, SQL based data transformation pipelines using version control and engineering inspired best practices.

* Documentation: [https://docs.dataform.co/](https://docs.dataform.co/)

### What's CookieCutter?

A command-line utility that creates projects from cookiecutters (project templates), e.g. creating a Python package project from a Python package project template.

* Documentation: [https://cookiecutter.readthedocs.io/en/1.7.2/index.html](https://cookiecutter.readthedocs.io/en/1.7.2/index.html)

## Quickstart

Install the latest Cookiecutter if you haven't installed it yet (this requires Cookiecutter 1.4.0 or higher):

```bash
    pip install -r requirements.txt
```
## Folder Structure

The project is structured in the main folders:

$ ./tree-md .
# Project tree
.
 * [{{coockiecutter and "root"}](./dir2)
   * [definitions](./dir2/file21.ext)
     * [{%- if cookiecutter.enum_folders == "yes" -%} 00_{% endif %}source](./dir2/file22.ext)
     * [{%- if cookiecutter.enum_folders == "yes" -%} 01_{% endif %}staging](./dir2/file22.ext)
     * [{%- if cookiecutter.enum_folders == "yes" -%} 02_{% endif %}tests](./dir2/file22.ext)
     * [{%- if cookiecutter.enum_folders == "yes" -%} 03_{% endif %}reports](./dir2/file22.ext)
   * [includes](./dir2/file23.ext)
   * [dataform.json](./dir2/file23.ext)
   * [environments.json](./dir2/file23.ext)
   * [run.sh](./dir2/file23.ext)
 * [hooks](./dir1)
   * [post_gen_project.sh](./dir1/file11.ext)
   * [pre_gen_project.sh](./dir1/file12.ext)
 * [cookiecutter.json](./file_in_root.ext)
 * [README.md](./README.md)
 * [requirements.txt](./requirements.txt)
