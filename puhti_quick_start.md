# Getting started with CSC

The purpose of this guide is to give a quick overview on how to start using Puhti. The information covered in this guide can be found in more detail on [CSC](https://www.csc.fi/), [CSC's service for research page](https://research.csc.fi/terms-of-use-and-pricing), [Puhti's user guide](https://docs.csc.fi/computing/overview/), and [Slurm documentation](https://slurm.schedmd.com/).

## Overview
[CSC](https://www.csc.fi/) provides computational resources for higher educational institutions in Finland. To use these resources, an account is required, which can be acquired by logging into [myCSC](https://my.csc.fi/) using one's HAKA account. Passwords can also be changed via myCSC.

CSC resource usage requires [billing units (BUs)](https://research.csc.fi/billing-and-monitoring). By default, each user receives 1,000 BUs in their personal project. CSC grants resources on a project-basis, and new projects can be created by PIs. PIs can add members to the project with their usernames. When you are added to a project, its information should show up at your [myCSC](https://my.csc.fi/) page in the `My Projects`. PIs can also grant services to a member of a project, which then requires the member's confirmation. When you are granted access to some services, you receive an email notification about it. The access can be confirmed in the project's information page on myCSC. When the access is confirmed, it may take some time (a couple of hours) for you to actually be able to use the service.

## Puhti
One of CSC's services is the supercomputer Puhti. Its user guide can be found [here](https://docs.csc.fi/computing/overview/). Puhti usage requires a user to be a member of a project other than a personal project, i.e., the default 1,000 BUs cannot be used on Puhti.

To connect to Puhti, run
`ssh <username>@puhti.csc.fi`

This connects you to your home directory on one of Puhti's two login nodes. There are three main [disk areas](https://docs.csc.fi/computing/disk/) on Puhti, `home`, which is user-specific, `projappl`, which is intended for application storage (on a project basis), and `scratch`, where the binaries for a project locate.

### Slurm scripts
While light computing can be done on the login nodes, heavier computing are to be done on the compute nodes. To use the compute nodes, jobs need to be submitted through the jobs scheduling system [Slurm](https://slurm.schedmd.com/). That is, the commands to be executed are written inside a Slurm script and submitted. Example Slurm scripts can be found [here](https://docs.csc.fi/computing/running/creating-job-scripts/) and [here](https://github.com/spyysalo/finbert-text-classification/blob/master/slurm-run-dev.sh).

In the Slurm script, the _partition_ on which a job is to be executed needs to be specified. The partitions can be found [here](https://docs.csc.fi/computing/running/batch-job-partitions/). The duration of the queue can depend on the partition, the remaining BUs in the project used, the resources asked for, etc.

To submit a job, use `sbatch <slurm_script.sh>`. To view the status of your submitted and running jobs, use `squeue -u <username>`. To display the accounting data for your submitted, running, and finished jobs, use `sacct`. By default, `sacct` prints out all the jobs that finish/have not finish on the day since midnight. To change the default, please refer to its manual by `man sacct`.

More information on job submission can be found [here](https://docs.csc.fi/computing/running/getting-started/).

### Modules
Puhti uses a module system to enable the usage of mutually incompatible software environments. Information on how to use modules is found [here](https://docs.csc.fi/computing/modules/).

Briefly, to list the currently loaded modules, use `module list`. To unload all modules, use `module purge`. To load a module, use `module load <modulename>`. To search for modules, use `module spider <name>`.


