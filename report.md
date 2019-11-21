# Community Analysis Report

## Overview of libCEED
libCEED is a software library primarily oriented towards the efficient solving
of PDEs using the Finite Element Method, specifically those of high order
accuracy. It's methodology is mostly algebraic, so it can also potentially be
applied to other problems as well. The project was started under the Center for
Efficient Exascale Discretizations (CEED), which is a Co-Design group under the
Exascale Computing Project (ECP). The aim of ECP is to develop software and
tools to better take advantage of the new exaflop-capable computational
hardware that is coming in the next several years. libCEED is a low-level API
that serves as a "bringing together" of several packages within the CEED
software suite, such as PETSc, OCCA, and MAGMA.

## Project Structure
libCEED can be broken up into two main pieces: front-end and back-end. The
front-end of the API are public facing functions that a user uses to define the
PDE problem they wish to solve. This consists of defining libCEED based data
structures, functions, and operators. The back-end of the API takes those
user-defined objects and actually runs them on the desired hardware. This
allows the user to write a single piece of code and have it be able to run well
on many different types of hardware platforms. This also allows for code
extensibility as new hardware is developed.

## Funding
CEED itself is supported by the ECP. DOE funds around $200 million to the ECP,
but I couldn't find a budget from ECP showing how much was going towards CEED.

## Project Stats
All these stats were derived from the master branch. There are several other
branches under significant active development. There were around 10
contributors in the past year, with an average of 5-10 commits per week. It was
started in 2017 and has several automated development tools.

## Contributing Guidelines
Most of the project communication occurs through GitHub issues and pull
requests (PRs). There is a contribution guidlines, which mainly focus on making
sure that additions to the code are testable and maintainable. Some of the
guidelines are that commits should be atomic, all commits should pass the test
suite, and commits should not have "house-keeping" changes (refactoring, typo
fixes, etc.) with actual code changes. It is generally recommended to
periodically make a work-in-progress (WIP) PR to get feedback for any
significant project undertaking. The project also has a Developer Certificate
of Origin, which is assumed to be agreed to upon opening a PR.

