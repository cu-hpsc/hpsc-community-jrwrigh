# HPSC Community Software Project

[Accept this assignment](https://classroom.github.com/a/4L5-V92e)

For this assignment, you will identify an open source software package
of relevance to high-performance scientific computing and follow its
development activities over the course of the semester.  This should
be a project with an active developer community from multiple
institutions that discuss their rationale in public, such as a mailing
list and/or GitHub/GitLab issues and pull requests. You will write and
present about the performance and capability needs of key
stakeholders, the way project resources are allocated, their metrics
for success, and any notable achievements made over the course of the
semester.

## Timeline

### 2019-10-16 (Wed): Community analysis proposal
  * Identify the project and document some stats and any risks
  * Complete by editing [proposal.md](proposal.md) and pushing to your
    repository.
### 2019-10-30 (Wed): Contribution proposal
  * Plan a contribution that you will attempt to merge upstream.
    Suggested contributions include (in approximate order of risk):
    * a new example or tutorial
    * improved documentation
    * performance testing tools
    * an improved implementation (faster, more reliable)
    * new functionality
  * Communicate with upstream about your intended contribution
    * This could be a post to the mailing list about your plan or
      opening an issue (assigned to yourself) outlining your intended
      contribution.
  * **Create an issue** in this repository with links to your contact
    above, and use it to reference updates (such as a pull request) to
    your contribution work.
### 2019-11-01 (Fri): Sign up to present community analysis
  * [Sign up](https://github.com/cucs-hpsc/hpsc-community/issues/1)
    for a short in-class/lab presentation on your community analysis.
### 2019-11-22 (Fri): Written report
  * Submit your written report on the community by pushing to this
    repository.  You can write in a markdown file, Jupyter notebook,
    or submit a PDF.
### 2019-12-02 (Mon): Pull requests submitted
  * Link your submission from the tracking issue created in your
    contribution proposal.
  * Please be respectful of reviewer time by ensuring that your PR
    passes the test suite, conforms to any coding standards of the
    project, and that any major decisions have been okayed by
    maintainers in advance of this PR, e.g., by discussion in your
    proposal or by a request for comment (RFC) pull request submitted
    prior to this date.
  * Maintainers/reviewers are busy; don't leave this to the last minute
### 2019-12-11 (Wed): Presentations
  * Lightning presentations and breakout group discussions of
   contributions, which have hopefully been merged by this time.

## Ideas

These are some projects that could be selected, or give you an ideo of
what to look for.  I may update this list with more suggestions.

* Libraries
  * Parallelism
    * [MPICH](https://github.com/pmodels/mpich/)
    * [Open MPI](https://github.com/open-mpi/ompi)
    * [DASK](https://github.com/dask/dask)
  * Parallel solvers
    * [PETSc](https://gitlab.com/petsc/petsc/)
    * [Trilinos](https://github.com/trilinos/Trilinos)
  * Partial differential equations
    * [Deal.II](https://github.com/dealii/dealii)
    * [Libmesh](https://github.com/libmesh/libmesh)
    * [MFEM](https://github.com/mfem/mfem/)
    * FEniCS [Dolfin](https://bitbucket.org/fenics-project/dolfin/src/master/)/[Dolfinx](https://github.com/FEniCS/dolfinx)
    * [Clawpack](https://github.com/clawpack/)
  * Python
    * [NumPy](https://github.com/numpy/numpy)
    * [SciPy](https://github.com/scipy/scipy/)
    * [Scikit-Learn](https://github.com/scikit-learn/scikit-learn)
    * [Pandas](https://github.com/pandas-dev/pandas)
* Applications
  * Computational chemistry
    * [LAMMPS](https://github.com/lammps/lammps)
    * [GROMACS](https://gitlab.com/petsc/petsc/merge_requests/2095#note_227002753~/)
    * [NWChem](https://github.com/nwchemgit/nwchem)
  * Geophysics
    * [Landlab](https://github.com/landlab/landlab)
    * [ASPECT](https://github.com/geodynamics/aspect)
    * [CESM](https://github.com/escomp/cesm) or [E3SM](https://github.com/E3SM-Project/E3SM)
    * [Pangeo](https://github.com/pangeo-data)
  * Computational fluid dynamics
    * [OpenFOAM](https://github.com/OpenFOAM/OpenFOAM-dev)
    * [SU2](https://github.com/su2code/SU2/tree/develop)
