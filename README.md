# Scalable Extreme Deconvolution

This repository contains a copy of the code for running the experiments in the Scalable Extreme Deconvolution paper.
At some point in the future we hope to tidy it up and  refactor it into a proper package.

## Requirements

An export of the conda environment used for the experiments is provided in [environment.yml](environment.yml).

For the baseline experiments, the [original extreme deconvolution implementation](https://github.com/jobovy/extreme-deconvolution) will need to be installed manually and added to your `PYTHONPATH`.

## Setup

Either install the `deconv` package in editable mode using `pip install -e .`, or otherwise add it to your `PYTHONPATH`.

## Data

The [deconv/experiments/gaia/preprocessing.py](deconv/experiments/gaia/preprocessing.py) script can convert a VO table file from a query on the DR2 source table using the [Gaia Archive](https://gea.esac.esa.int/archive/) into a Numpy `.npz` file for use with the experiment scripts.

## Experiments

The scripts in [deconv/experiments/gaia/](deconv/experiments/gaia/) show how to fit the models to the `.npz` datafiles.
The bash scripts are specific to our cluster, but show the options used in the experiments.

[deconv/experiments/checks/](deconv/experiments/checks/) contains some small toy experiments.


