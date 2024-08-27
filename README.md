# Results

## Ryzen 7 5800X3D

```
Benchmark 1 (12 runs): /tmp/x86_64_znver3-linux-math-test-std
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           905ms ±  497us     905ms …  906ms          0 ( 0%)        0%
  peak_rss            983KB ±    0       983KB …  983KB          0 ( 0%)        0%
  cpu_cycles         4.10G  ±  496K     4.10G  … 4.10G           0 ( 0%)        0%
  instructions       2.46G  ± 8.53      2.46G  … 2.46G           1 ( 8%)        0%
  cache_references   27.9K  ± 12.8K     22.4K  … 68.3K           1 ( 8%)        0%
  cache_misses        204   ±  126        99   …  544            1 ( 8%)        0%
  branch_misses      10.4M  ±  821      10.4M  … 10.4M           1 ( 8%)        0%
Benchmark 2 (16 runs): /tmp/x86_64_znver3-linux-math-test-stein
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           643ms ± 2.96ms     641ms …  650ms          0 ( 0%)        ⚡- 28.9% ±  0.2%
  peak_rss           1.01MB ±    0      1.01MB … 1.01MB          0 ( 0%)        💩+  2.9% ±  0.0%
  cpu_cycles         2.90G  ±  312K     2.90G  … 2.91G           1 ( 6%)        ⚡- 29.1% ±  0.0%
  instructions       4.68G  ± 13.0      4.68G  … 4.68G           0 ( 0%)        💩+ 90.6% ±  0.0%
  cache_references   17.7K  ± 2.62K     15.7K  … 26.7K           2 (13%)        ⚡- 36.8% ± 24.1%
  cache_misses        179   ±  137       102   …  677            2 (13%)          - 12.2% ± 51.0%
  branch_misses      11.0M  ± 1.02K     11.0M  … 11.0M           0 ( 0%)        💩+  5.5% ±  0.0%
Benchmark 3 (15 runs): /tmp/x86_64_znver3-linux-math-test-lemire
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           675ms ± 2.56ms     673ms …  682ms          1 ( 7%)        ⚡- 25.4% ±  0.2%
  peak_rss           1.01MB ±    0      1.01MB … 1.01MB          0 ( 0%)        💩+  2.9% ±  0.0%
  cpu_cycles         3.04G  ± 57.5K     3.04G  … 3.04G           1 ( 7%)        ⚡- 25.7% ±  0.0%
  instructions       6.82G  ± 14.2      6.82G  … 6.82G           0 ( 0%)        💩+177.9% ±  0.0%
  cache_references   16.3K  ±  742      15.0K  … 17.7K           0 ( 0%)        ⚡- 41.6% ± 24.3%
  cache_misses        169   ± 53.0       113   …  278            0 ( 0%)          - 16.9% ± 36.2%
  branch_misses      11.0M  ± 1.46K     11.0M  … 11.0M           1 ( 7%)        💩+  5.5% ±  0.0%
Benchmark 4 (23 runs): /tmp/x86_64_znver3-linux-math-test-Fri3dNstuff
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           450ms ± 3.52ms     445ms …  455ms          0 ( 0%)        ⚡- 50.3% ±  0.2%
  peak_rss           1.01MB ±    0      1.01MB … 1.01MB          0 ( 0%)        💩+  2.9% ±  0.0%
  cpu_cycles         2.01G  ±  238K     2.01G  … 2.01G           0 ( 0%)        ⚡- 51.0% ±  0.0%
  instructions       4.63G  ± 7.53      4.63G  … 4.63G           2 ( 9%)        💩+ 88.8% ±  0.0%
  cache_references   11.0K  ±  534      10.0K  … 12.3K           0 ( 0%)        ⚡- 60.7% ± 19.3%
  cache_misses        161   ± 63.2        98   …  363            3 (13%)          - 21.2% ± 31.8%
  branch_misses      10.9M  ± 14.7K     10.9M  … 10.9M           4 (17%)        💩+  5.0% ±  0.1%
```

## Mac Mini M1 (2020)

```
 Performance counter stats for './aarch64_apple_a14-linux-math-test-std' (10 runs):

           1511.44 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.51% )
                 7      context-switches                 #    4.631 /sec                        ( +-  9.05% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    2.646 /sec                        ( +-  2.50% )
        4485534606      cycles                           #    2.968 GHz                         ( +-  0.46% )
        2082820994      instructions                     #    0.46  insn per cycle              ( +-  0.46% )
   <not supported>      branches
   <not supported>      branch-misses

           1.51194 +- 0.00765 seconds time elapsed  ( +-  0.51% )


 Performance counter stats for './aarch64_apple_a14-linux-math-test-stein' (10 runs):

            999.30 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.41% )
                 3      context-switches                 #    3.002 /sec                        ( +- 29.42% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    4.003 /sec                        ( +-  3.33% )
        2968366148      cycles                           #    2.970 GHz                         ( +-  0.22% )
        4667748685      instructions                     #    1.57  insn per cycle              ( +-  0.22% )
   <not supported>      branches
   <not supported>      branch-misses

           0.99978 +- 0.00407 seconds time elapsed  ( +-  0.41% )


 Performance counter stats for './aarch64_apple_a14-linux-math-test-lemire' (10 runs):

            883.32 msec task-clock                       #    0.995 CPUs utilized               ( +-  0.34% )
                 2      context-switches                 #    2.264 /sec                        ( +- 24.78% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    4.528 /sec
        2592482301      cycles                           #    2.935 GHz                         ( +-  0.22% )
        4217333201      instructions                     #    1.63  insn per cycle              ( +-  0.22% )
   <not supported>      branches
   <not supported>      branch-misses

           0.88796 +- 0.00641 seconds time elapsed  ( +-  0.72% )


 Performance counter stats for './aarch64_apple_a14-linux-math-test-Fri3dNstuff' (10 runs):

            679.87 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.50% )
                 2      context-switches                 #    2.942 /sec                        ( +- 24.49% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    5.883 /sec
        2030127442      cycles                           #    2.986 GHz                         ( +-  0.16% )
        3763956194      instructions                     #    1.85  insn per cycle              ( +-  0.16% )
   <not supported>      branches
   <not supported>      branch-misses

           0.68017 +- 0.00343 seconds time elapsed  ( +-  0.50% )
```

## VisionFive JH7710

Note that this is with the `Zbb` extension set in `build.zig`.
Without it, `std` beats `stein` every time.

```
 Performance counter stats for './riscv64_sifive_u74-linux-math-test-std' (10 runs):

           2153.58 msec task-clock                       #    0.999 CPUs utilized               ( +-  0.02% )
                18      context-switches                 #    8.358 /sec                        ( +-  9.69% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    2.322 /sec
        3229039858      cycles                           #    1.499 GHz                         ( +-  0.02% )  (25.00%)
         961651524      instructions                     #    0.30  insn per cycle              ( +-  0.02% )  (50.08%)
     <not counted>      branches                                                                (0.00%)
     <not counted>      branch-misses                                                           (0.00%)

          2.155672 +- 0.000371 seconds time elapsed  ( +-  0.02% )

 Performance counter stats for './riscv64_sifive_u74-linux-math-test-stein' (10 runs):

           1616.51 msec task-clock                       #    0.998 CPUs utilized               ( +-  0.02% )
                18      context-switches                 #   11.135 /sec                        ( +- 13.66% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    3.093 /sec
        2423716668      cycles                           #    1.499 GHz                         ( +-  0.02% )  (25.01%)
        2888452015      instructions                     #    1.19  insn per cycle              ( +-  0.01% )  (50.00%)
     <not counted>      branches                                                                (0.00%)
     <not counted>      branch-misses                                                           (0.00%)

          1.619231 +- 0.000605 seconds time elapsed  ( +-  0.04% )

 Performance counter stats for './riscv64_sifive_u74-linux-math-test-lemire' (10 runs):

           1963.73 msec task-clock                       #    0.998 CPUs utilized               ( +-  0.06% )
                28      context-switches                 #   14.259 /sec                        ( +- 16.93% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    2.546 /sec
        2944056591      cycles                           #    1.499 GHz                         ( +-  0.05% )  (24.99%)
        4373459943      instructions                     #    1.49  insn per cycle              ( +-  0.01% )  (50.09%)
     <not counted>      branches                                                                (0.00%)
     <not counted>      branch-misses                                                           (0.00%)

           1.96716 +- 0.00157 seconds time elapsed  ( +-  0.08% )

 Performance counter stats for './riscv64_sifive_u74-linux-math-test-Fri3dNstuff' (10 runs):

           2237.67 msec task-clock                       #    0.999 CPUs utilized               ( +-  0.01% )
                27      context-switches                 #   12.066 /sec                        ( +- 16.07% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    2.234 /sec
        3355037335      cycles                           #    1.499 GHz                         ( +-  0.01% )  (24.92%)
        3063112104      instructions                     #    0.91  insn per cycle              ( +-  0.00% )  (49.94%)
     <not counted>      branches                                                                (0.00%)
     <not counted>      branch-misses                                                           (0.00%)

          2.240712 +- 0.000524 seconds time elapsed  ( +-  0.02% )
```

## Raspberry Pi Zero W

```

 Performance counter stats for './arm_arm1176jzf_s-linux-math-test-std' (10 runs):

          13598.28 msec task-clock                       #    0.998 CPUs utilized               ( +-  0.00% )
               169      context-switches                 #   12.428 /sec                        ( +-  3.70% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    0.294 /sec
       13578059517      cycles                           #    0.999 GHz                         ( +-  0.00% )  (74.99%)
       11012902381      instructions                     #    0.81  insn per cycle              ( +-  0.00% )  (75.01%)
        1413869901      branches                         #  103.974 M/sec                       ( +-  0.00% )  (75.01%)
         273913904      branch-misses                    #   19.37% of all branches             ( +-  0.01% )  (49.99%)

           13.6216 +- 0.0108 seconds time elapsed  ( +-  0.08% )


 Performance counter stats for './arm_arm1176jzf_s-linux-math-test-stein' (10 runs):

           3830.22 msec task-clock                       #    0.999 CPUs utilized               ( +-  0.01% )
                50      context-switches                 #   13.054 /sec                        ( +-  6.58% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    1.044 /sec
        3824224902      cycles                           #    0.998 GHz                         ( +-  0.00% )  (74.97%)
        3512279391      instructions                     #    0.92  insn per cycle              ( +-  0.00% )  (74.96%)
         457482740      branches                         #  119.440 M/sec                       ( +-  0.00% )  (74.94%)
          10043193      branch-misses                    #    2.20% of all branches             ( +-  0.01% )  (50.10%)

          3.832409 +- 0.000631 seconds time elapsed  ( +-  0.02% )


 Performance counter stats for './arm_arm1176jzf_s-linux-math-test-lemire' (10 runs):

           3666.02 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.00% )
                44      context-switches                 #   12.002 /sec                        ( +-  3.71% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    1.091 /sec
        3660470397      cycles                           #    0.998 GHz                         ( +-  0.00% )  (74.92%)
        3429403597      instructions                     #    0.94  insn per cycle              ( +-  0.00% )  (74.91%)
         306083473      branches                         #   83.492 M/sec                       ( +-  0.00% )  (75.02%)
          22264620      branch-misses                    #    7.27% of all branches             ( +-  0.00% )  (50.06%)

          3.666334 +- 0.000906 seconds time elapsed  ( +-  0.02% )


 Performance counter stats for './arm_arm1176jzf_s-linux-math-test-Fri3dNstuff' (10 runs):

           3371.26 msec task-clock                       #    0.998 CPUs utilized               ( +-  0.01% )
                45      context-switches                 #   13.348 /sec                        ( +-  9.33% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    1.187 /sec
        3366020373      cycles                           #    0.998 GHz                         ( +-  0.01% )  (74.80%)
        3065029214      instructions                     #    0.91  insn per cycle              ( +-  0.00% )  (75.02%)
         253820425      branches                         #   75.290 M/sec                       ( +-  0.00% )  (75.09%)
          10038665      branch-misses                    #    3.96% of all branches             ( +-  0.01% )  (49.90%)

           3.37874 +- 0.00922 seconds time elapsed  ( +-  0.27% )
```

## POWER9

```
 Performance counter stats for './powerpc64le_pwr9-linux-math-test-std' (10 runs):

           1283.79 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.00% )
                 1      context-switches                 #    0.779 /sec                        ( +- 35.90% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    3.116 /sec                        ( +-  2.50% )
        5001744687      cycles                           #    3.896 GHz                         ( +-  0.00% )
        2084343901      instructions                     #    0.42  insn per cycle              ( +-  0.00% )
         472509148      branches                         #  368.058 M/sec                       ( +-  0.01% )
          10908261      branch-misses                    #    2.31% of all branches             ( +-  0.01% )

         1.2839980 +- 0.0000423 seconds time elapsed  ( +-  0.00% )


 Performance counter stats for './powerpc64le_pwr9-linux-math-test-stein' (10 runs):

           1445.98 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.00% )
                 1      context-switches                 #    0.692 /sec                        ( +- 37.86% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    2.766 /sec                        ( +-  2.50% )
        5633676165      cycles                           #    3.896 GHz                         ( +-  0.00% )
        4277236734      instructions                     #    0.76  insn per cycle              ( +-  0.00% )
         524587290      branches                         #  362.790 M/sec                       ( +-  0.00% )
          11008813      branch-misses                    #    2.10% of all branches             ( +-  0.01% )

         1.4461749 +- 0.0000138 seconds time elapsed  ( +-  0.00% )


 Performance counter stats for './powerpc64le_pwr9-linux-math-test-lemire' (10 runs):

           1202.54 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.01% )
                 2      context-switches                 #    1.663 /sec                        ( +- 16.75% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    3.326 /sec                        ( +-  2.50% )
        4685187942      cycles                           #    3.896 GHz                         ( +-  0.01% )
        4207425896      instructions                     #    0.90  insn per cycle              ( +-  0.00% )
         491637624      branches                         #  408.832 M/sec                       ( +-  0.01% )
          11041824      branch-misses                    #    2.25% of all branches             ( +-  0.11% )

         1.2027730 +- 0.0000784 seconds time elapsed  ( +-  0.01% )


 Performance counter stats for './powerpc64le_pwr9-linux-math-test-Fri3dNstuff' (10 runs):

            897.52 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.00% )
                 1      context-switches                 #    1.114 /sec                        ( +- 17.95% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    4.457 /sec
        3496827799      cycles                           #    3.896 GHz                         ( +-  0.00% )
        3767337475      instructions                     #    1.08  insn per cycle              ( +-  0.00% )
         512964380      branches                         #  571.534 M/sec                       ( +-  0.00% )
          11101291      branch-misses                    #    2.16% of all branches             ( +-  0.02% )

         0.8977013 +- 0.0000343 seconds time elapsed  ( +-  0.00% )
```

## Ubiquiti EdgeRouter 4

```
# std
real    0m16.260s
user    0m16.255s
sys     0m0.000s
# stein
real    0m8.788s
user    0m8.788s
sys     0m0.000s
# lemire
real    0m8.293s
user    0m8.292s
sys     0m0.000s
# Fri3dNstuff
real    0m7.429s
user    0m7.429s
sys     0m0.000s
```

## DLink DIR-853 A3 / MediaTek MT7621

```
# std
real    0m6.434s
user    0m6.432s
sys     0m0.002s
# stein
real    0m4.242s
user    0m4.241s
sys     0m0.001s
# lemire
real    0m5.500s
user    0m5.499s
sys     0m0.001s
# Fri3dNstuff
real    0m4.371s
user    0m4.369s
sys     0m0.001s
```
