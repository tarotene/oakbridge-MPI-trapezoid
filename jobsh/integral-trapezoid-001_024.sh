#!/bin/sh
#PJM -N "test"
#PJM -L rscgrp=lecture
#PJM -L node=1
#PJM --mpi proc=24
#PJM -L elapse=00:15:00
#PJM -g gt37
#PJM -j
#PJM -e err
#PJM -o ./stat/integeral-trapezoid_001-024.lst

mpiexec.hydra -n ${PJM_MPI_PROC} ./bin/integral-trapezoid-a.out
mpiexec.hydra -n ${PJM_MPI_PROC} ./bin/integral-trapezoid-b.out
export I_MPI_PIN_PROCESSOR_LIST=0-23
mpiexec.hydra -n ${PJM_MPI_PROC} ./bin/integral-trapezoid-a.out
mpiexec.hydra -n ${PJM_MPI_PROC} ./bin/integral-trapezoid-b.out