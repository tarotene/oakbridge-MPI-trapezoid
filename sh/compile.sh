#!/bin/bash

mpiicc ./src/integral-trapezoid-a.c -o ./bin/integral-trapezoid-a.out
mpiicc ./src/integral-trapezoid-b.c -o ./bin/integral-trapezoid-b.out