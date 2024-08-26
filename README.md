# Results

## Ryzen 7 5800X3D

```
$ ssh -t stephen@192.168.20.3 -- "(/tmp/poop --duration 10000 /tmp/*-math-test-{std,stein,lemire})
Benchmark 1 (11 runs): /tmp/x86_64_znver3-linux-math-test-std
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           912ms ± 1.32ms     910ms …  914ms          0 ( 0%)        0%
  peak_rss            983KB ±    0       983KB …  983KB          0 ( 0%)        0%
  cpu_cycles         4.14G  ± 3.14M     4.13G  … 4.14G           0 ( 0%)        0%
  instructions       2.48G  ± 1.47      2.48G  … 2.48G           0 ( 0%)        0%
  cache_references   15.5K  ± 1.11K     14.2K  … 18.1K           0 ( 0%)        0%
  cache_misses        120   ± 21.7        89   …  158            0 ( 0%)        0%
  branch_misses      10.4M  ± 2.60K     10.4M  … 10.4M           0 ( 0%)        0%
Benchmark 2 (15 runs): /tmp/x86_64_znver3-linux-math-test-stein
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           678ms ± 2.43ms     669ms …  678ms          1 ( 7%)        ⚡- 25.7% ±  0.2%
  peak_rss           1.01MB ±    0      1.01MB … 1.01MB          0 ( 0%)        💩+  2.9% ±  0.0%
  cpu_cycles         3.03G  ± 25.6K     3.03G  … 3.03G           0 ( 0%)        ⚡- 26.8% ±  0.0%
  instructions       4.75G  ± 2.48      4.75G  … 4.75G           1 ( 7%)        💩+ 91.6% ±  0.0%
  cache_references   9.44K  ±  235      9.09K  … 9.85K           0 ( 0%)        ⚡- 39.2% ±  3.9%
  cache_misses       84.3   ± 13.6        59   …  112            0 ( 0%)        ⚡- 29.7% ± 11.9%
  branch_misses      11.0M  ±  781      11.0M  … 11.0M           0 ( 0%)        💩+  6.0% ±  0.0%
Benchmark 3 (15 runs): /tmp/x86_64_znver3-linux-math-test-lemire
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           691ms ±  145us     690ms …  691ms          0 ( 0%)        ⚡- 24.3% ±  0.1%
  peak_rss           1.01MB ±    0      1.01MB … 1.01MB          0 ( 0%)        💩+  2.9% ±  0.0%
  cpu_cycles         3.06G  ± 19.9K     3.06G  … 3.06G           0 ( 0%)        ⚡- 26.0% ±  0.0%
  instructions       6.91G  ± 0.70      6.91G  … 6.91G           0 ( 0%)        💩+178.8% ±  0.0%
  cache_references   10.8K  ±  534      10.4K  … 12.0K           0 ( 0%)        ⚡- 30.3% ±  4.3%
  cache_misses        109   ± 18.2        86   …  136            0 ( 0%)          -  8.9% ± 13.5%
  branch_misses      11.0M  ± 4.09K     11.0M  … 11.0M           2 (13%)        💩+  5.8% ±  0.0%
```

## Mac Mini M1 (2020)

```
           1443.69 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.14% )
                 6      context-switches                 #    4.156 /sec                        ( +- 10.38% )
                 1      cpu-migrations                   #    0.693 /sec
                 5      page-faults                      #    3.463 /sec                        ( +-  2.67% )
        4561739628      cycles                           #    3.160 GHz                         ( +-  0.06% )  (97.64%)
        2089213761      instructions                     #    0.46  insn per cycle              ( +-  0.06% )  (97.64%)
   <not supported>      branches
   <not supported>      branch-misses

           1.44430 +- 0.00210 seconds time elapsed  ( +-  0.15% )

 Performance counter stats for './aarch64_apple_a14-linux-math-test-stein' (10 runs):

            954.93 msec task-clock                       #    0.999 CPUs utilized               ( +-  0.03% )
                 5      context-switches                 #    5.236 /sec                        ( +- 12.00% )
                 1      cpu-migrations                   #    1.047 /sec
                 5      page-faults                      #    5.236 /sec                        ( +-  2.00% )
        3001487126      cycles                           #    3.143 GHz                         ( +-  0.06% )  (96.65%)
        4780915006      instructions                     #    1.59  insn per cycle              ( +-  0.06% )  (96.65%)
   <not supported>      branches
   <not supported>      branch-misses

          0.955530 +- 0.000252 seconds time elapsed  ( +-  0.03% )

 Performance counter stats for './aarch64_apple_a14-linux-math-test-lemire' (10 runs):

            847.86 msec task-clock                       #    0.999 CPUs utilized               ( +-  0.07% )
                 4      context-switches                 #    4.718 /sec                        ( +- 11.67% )
                 1      cpu-migrations                   #    1.179 /sec
                 5      page-faults                      #    5.897 /sec                        ( +-  3.27% )
        2656216961      cycles                           #    3.133 GHz                         ( +-  0.08% )  (95.00%)
        4341188837      instructions                     #    1.63  insn per cycle              ( +-  0.08% )  (95.00%)
   <not supported>      branches
   <not supported>      branch-misses

          0.848438 +- 0.000674 seconds time elapsed  ( +-  0.08% )
```

## VisionFive JH7710

Note that this is with the `Zbb` extension set in `build.zig`.
Without it, `std` beats `stein` every time.

```
 Performance counter stats for './riscv64_sifive_u74-linux-math-test-std' (10 runs):

           2182.63 msec task-clock                       #    0.999 CPUs utilized               ( +-  0.02% )
                11      context-switches                 #    5.040 /sec                        ( +-  6.39% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    2.291 /sec
        3272703109      cycles                           #    1.499 GHz                         ( +-  0.02% )  (24.96%)
         953587654      instructions                     #    0.29  insn per cycle              ( +-  0.02% )  (50.06%)
     <not counted>      branches                                                                (0.00%)
     <not counted>      branch-misses                                                           (0.00%)

          2.184728 +- 0.000387 seconds time elapsed  ( +-  0.02% )

 Performance counter stats for './riscv64_sifive_u74-linux-math-test-stein' (10 runs):

           1642.35 msec task-clock                       #    0.999 CPUs utilized               ( +-  0.02% )
                12      context-switches                 #    7.307 /sec                        ( +- 21.68% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    3.044 /sec
        2462475257      cycles                           #    1.499 GHz                         ( +-  0.02% )  (25.01%)
        2910763912      instructions                     #    1.18  insn per cycle              ( +-  0.00% )  (50.10%)
     <not counted>      branches                                                                (0.00%)
     <not counted>      branch-misses                                                           (0.00%)

          1.644644 +- 0.000304 seconds time elapsed  ( +-  0.02% )

 Performance counter stats for './riscv64_sifive_u74-linux-math-test-lemire' (10 runs):

           1983.09 msec task-clock                       #    0.999 CPUs utilized               ( +-  0.01% )
                22      context-switches                 #   11.094 /sec                        ( +- 28.08% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    2.521 /sec
        2973412334      cycles                           #    1.499 GHz                         ( +-  0.01% )  (24.95%)
        4419729226      instructions                     #    1.49  insn per cycle              ( +-  0.00% )  (49.97%)
     <not counted>      branches                                                                (0.00%)
     <not counted>      branch-misses                                                           (0.00%)

          1.985324 +- 0.000159 seconds time elapsed  ( +-  0.01% )
```

## Raspberry Pi Zero W

```
 Performance counter stats for './arm_arm1176jzf_s-linux-math-test-std' (10 runs):

          13999.46 msec task-clock                       #    0.999 CPUs utilized               ( +-  0.00% )
               175      context-switches                 #   12.500 /sec                        ( +-  2.59% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    0.357 /sec
       13978170726      cycles                           #    0.998 GHz                         ( +-  0.00% )  (74.97%)
       11340540517      instructions                     #    0.81  insn per cycle              ( +-  0.00% )  (75.01%)
        1459093009      branches                         #  104.225 M/sec                       ( +-  0.00% )  (75.01%)
         282610803      branch-misses                    #   19.37% of all branches             ( +-  0.00% )  (49.98%)

          14.01674 +- 0.00863 seconds time elapsed  ( +-  0.06% )

 Performance counter stats for './arm_arm1176jzf_s-linux-math-test-stein' (10 runs):

           3966.15 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.00% )
                47      context-switches                 #   11.850 /sec                        ( +-  4.18% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    1.261 /sec
        3960266480      cycles                           #    0.999 GHz                         ( +-  0.00% )  (74.90%)
        3641231573      instructions                     #    0.92  insn per cycle              ( +-  0.00% )  (75.05%)
         471622200      branches                         #  118.912 M/sec                       ( +-  0.00% )  (75.06%)
          10044537      branch-misses                    #    2.13% of all branches             ( +-  0.01% )  (49.90%)

          3.965449 +- 0.000953 seconds time elapsed  ( +-  0.02% )

 Performance counter stats for './arm_arm1176jzf_s-linux-math-test-lemire' (10 runs):

           3733.97 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.00% )
                46      context-switches                 #   12.319 /sec                        ( +-  6.00% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    1.339 /sec
        3728411793      cycles                           #    0.999 GHz                         ( +-  0.00% )  (74.91%)
        3487009375      instructions                     #    0.94  insn per cycle              ( +-  0.00% )  (75.11%)
         313139878      branches                         #   83.862 M/sec                       ( +-  0.00% )  (75.11%)
          22263867      branch-misses                    #    7.11% of all branches             ( +-  0.01% )  (49.78%)

          3.733445 +- 0.000962 seconds time elapsed  ( +-  0.03% )
```

## POWER9

```
 Performance counter stats for './powerpc64le_pwr9-linux-math-test-std' (10 runs):

           1303.86 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.00% )
                 2      context-switches                 #    1.534 /sec                        ( +- 22.11% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    3.068 /sec
        5079935392      cycles                           #    3.896 GHz                         ( +-  0.00% )
        2073587225      instructions                     #    0.41  insn per cycle              ( +-  0.00% )
         482941933      branches                         #  370.394 M/sec                       ( +-  0.01% )
          10957119      branch-misses                    #    2.27% of all branches             ( +-  0.02% )

         1.3040603 +- 0.0000683 seconds time elapsed  ( +-  0.01% )

 Performance counter stats for './powerpc64le_pwr9-linux-math-test-stein' (10 runs):

           1467.64 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.00% )
                 1      context-switches                 #    0.681 /sec                        ( +- 26.67% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    2.725 /sec                        ( +-  2.50% )
        5718041554      cycles                           #    3.896 GHz                         ( +-  0.00% )
        4260651807      instructions                     #    0.75  insn per cycle              ( +-  0.00% )
         535746197      branches                         #  365.040 M/sec                       ( +-  0.01% )
          11456668      branch-misses                    #    2.14% of all branches             ( +-  0.03% )

         1.4678128 +- 0.0000437 seconds time elapsed  ( +-  0.00% )
 Performance counter stats for './powerpc64le_pwr9-linux-math-test-lemire' (10 runs):

           1239.43 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.00% )
                 2      context-switches                 #    1.614 /sec                        ( +- 21.08% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    3.227 /sec
        4828917708      cycles                           #    3.896 GHz                         ( +-  0.00% )
        4310966565      instructions                     #    0.89  insn per cycle              ( +-  0.00% )
         502252788      branches                         #  405.229 M/sec                       ( +-  0.00% )
          11121948      branch-misses                    #    2.21% of all branches             ( +-  0.01% )

         1.2396286 +- 0.0000414 seconds time elapsed  ( +-  0.00% )
```

## Ubiquiti EdgeRouter 4

```
# std
real    0m 16.55s
user    0m 16.55s
sys     0m 0.00s
# stein
real    0m 8.92s
user    0m 8.92s
sys     0m 0.00s
# lemire
real    0m 8.43s
user    0m 8.42s
sys     0m 0.00s
```

## DLink DIR-853 A3 / MediaTek MT7621

```
# std
real    0m 6.66s
user    0m 6.65s
sys     0m 0.00s
# stein
real    0m 4.34s
user    0m 4.34s
sys     0m 0.00s
# lemire
real    0m 5.65s
user    0m 5.65s
sys     0m 0.00s
```
