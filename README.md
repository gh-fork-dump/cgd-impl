# Results

## Ryzen 7 5800X3D

```
$ poop --duration 10000 ./x86_64_znver3-linux-math-test-std ./x86_64_znver3-linux-math-test-stein
Benchmark 1 (11 runs): ./x86_64_znver3-linux-math-test-std
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           936ms ± 7.41ms     929ms …  952ms          0 ( 0%)        0%
  peak_rss            262KB ±    0       262KB …  262KB          0 ( 0%)        0%
  cpu_cycles         4.13G  ±  470K     4.13G  … 4.13G           0 ( 0%)        0%
  instructions       2.48G  ±  254      2.48G  … 2.48G           1 ( 9%)        0%
  cache_references   24.9K  ± 19.7K     14.6K  … 79.9K           1 ( 9%)        0%
  cache_misses        276   ±  350       107   … 1.30K           1 ( 9%)        0%
  branch_misses      10.4M  ±  741      10.4M  … 10.4M           0 ( 0%)        0%
Benchmark 2 (15 runs): ./x86_64_znver3-linux-math-test-stein
  measurement          mean ± σ            min … max           outliers         delta
  wall_time           679ms ± 4.77ms     674ms …  684ms          0 ( 0%)        ⚡- 27.4% ±  0.5%
  peak_rss            262KB ±    0       262KB …  262KB          0 ( 0%)          -  0.0% ±  0.0%
  cpu_cycles         2.96G  ± 67.1K     2.96G  … 2.96G           2 (13%)        ⚡- 28.3% ±  0.0%
  instructions       4.75G  ± 3.75      4.75G  … 4.75G           0 ( 0%)        💩+ 91.6% ±  0.0%
  cache_references   9.13K  ±  652      8.38K  … 11.1K           1 ( 7%)        ⚡- 63.4% ± 41.8%
  cache_misses        105   ± 39.7        73   …  227            1 ( 7%)          - 61.9% ± 67.6%
  branch_misses      11.0M  ± 8.71K     10.9M  … 11.0M           2 (13%)        💩+  5.9% ±  0.1%
```

## Mac Mini M1 (2020)

```
Performance counter stats for './aarch64_apple_a14-linux-math-test-std' (10 runs):

           1458.83 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.61% )
                 4      context-switches                 #    2.742 /sec                        ( +- 12.61% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    3.427 /sec                        ( +-  2.00% )
        4511988286      cycles                           #    3.093 GHz                         ( +-  0.12% )  (97.77%)
        2068966845      instructions                     #    0.46  insn per cycle              ( +-  0.12% )  (97.77%)
   <not supported>      branches
   <not supported>      branch-misses

           1.45938 +- 0.00886 seconds time elapsed  ( +-  0.61% )

Performance counter stats for './aarch64_apple_a14-linux-math-test-stein' (10 runs):

            938.25 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.39% )
                 2      context-switches                 #    2.132 /sec                        ( +- 17.08% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    5.329 /sec
        2949534561      cycles                           #    3.144 GHz                         ( +-  0.00% )
        4697941617      instructions                     #    1.59  insn per cycle              ( +-  0.00% )
   <not supported>      branches
   <not supported>      branch-misses

           0.93857 +- 0.00364 seconds time elapsed  ( +-  0.39% )
```

## VisionFive JH7710

Note that this is with the `Zbb` extension set in `build.zig`.
Without it, `std` beats `stein` every time.

```
Performance counter stats for './riscv64_sifive_u74-linux-math-test-std' (10 runs):

           2181.74 msec task-clock                       #    0.999 CPUs utilized               ( +-  0.00% )
                33      context-switches                 #   15.126 /sec                        ( +- 12.59% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    2.292 /sec
        3271306801      cycles                           #    1.499 GHz                         ( +-  0.00% )  (25.04%)
         953356401      instructions                     #    0.29  insn per cycle              ( +-  0.01% )  (50.13%)
     <not counted>      branches                                                                (0.00%)
     <not counted>      branch-misses                                                           (0.00%)

          2.184537 +- 0.000465 seconds time elapsed  ( +-  0.02% )

Performance counter stats for './riscv64_sifive_u74-linux-math-test-stein' (10 runs):

           1642.80 msec task-clock                       #    0.999 CPUs utilized               ( +-  0.04% )
                14      context-switches                 #    8.522 /sec                        ( +-  6.21% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    3.044 /sec
        2463145580      cycles                           #    1.499 GHz                         ( +-  0.04% )  (25.09%)
        2911609811      instructions                     #    1.18  insn per cycle              ( +-  0.01% )  (50.20%)
     <not counted>      branches                                                                (0.00%)
     <not counted>      branch-misses                                                           (0.00%)

          1.645148 +- 0.000760 seconds time elapsed  ( +-  0.05% )
```


## Raspberry Pi Zero W

```
Performance counter stats for './arm_arm1176jzf_s-linux-math-test-std' (10 runs):

          14009.20 msec task-clock                       #    0.997 CPUs utilized               ( +-  0.03% )
               158      context-switches                 #   11.278 /sec                        ( +- 31.34% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    0.357 /sec
       13983493377      cycles                           #    0.998 GHz                         ( +-  0.02% )  (74.98%)
       11341206010      instructions                     #    0.81  insn per cycle              ( +-  0.01% )  (75.02%)
        1459021409      branches                         #  104.147 M/sec                       ( +-  0.01% )  (75.02%)
         282611298      branch-misses                    #   19.37% of all branches             ( +-  0.01% )  (49.96%)

           14.0557 +- 0.0345 seconds time elapsed  ( +-  0.25% )

Performance counter stats for './arm_arm1176jzf_s-linux-math-test-stein' (10 runs):

           3973.18 msec task-clock                       #    0.991 CPUs utilized               ( +-  0.08% )
                86      context-switches                 #   21.645 /sec                        ( +- 44.43% )
                 0      cpu-migrations                   #    0.000 /sec
                 5      page-faults                      #    1.258 /sec
        3964540268      cycles                           #    0.998 GHz                         ( +-  0.05% )  (74.93%)
        3641931956      instructions                     #    0.92  insn per cycle              ( +-  0.01% )  (75.11%)
         471625151      branches                         #  118.702 M/sec                       ( +-  0.01% )  (75.07%)
          10049494      branch-misses                    #    2.13% of all branches             ( +-  0.05% )  (49.82%)

            4.0104 +- 0.0210 seconds time elapsed  ( +-  0.52% )
```

## POWER10

```
Performance counter stats for './powerpc64le_pwr9-linux-math-test-std' (10 runs):

           1304.02 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.00% )
                 1      context-switches                 #    0.767 /sec                        ( +- 21.34% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    3.067 /sec
        5080541644      cycles                           #    3.896 GHz                         ( +-  0.00% )
        2073606740      instructions                     #    0.41  insn per cycle              ( +-  0.00% )
         483017601      branches                         #  370.407
          10956565      branch-misses                    #    2.27% of all branches             ( +-  0.00% )

         1.3042226 +- 0.0000571 seconds time elapsed  ( +-  0.00% )


Performance counter stats for './powerpc64le_pwr9-linux-math-test-stein' (10 runs):

           1467.42 msec task-clock                       #    1.000 CPUs utilized               ( +-  0.00% )
                 1      context-switches                 #    0.681 /sec                        ( +- 22.11% )
                 0      cpu-migrations                   #    0.000 /sec
                 4      page-faults                      #    2.726 /sec
        5717203678      cycles                           #    3.896 GHz                         ( +-  0.00% )
        4260705784      instructions                     #    0.75  insn per cycle              ( +-  0.00% )
         536118553      branches                         #  365.347 M/sec                       ( +-  0.01% )
          11433622      branch-misses                    #    2.13% of all branches             ( +-  0.01% )

         1.4676346 +- 0.0000446 seconds time elapsed  ( +-  0.00% )
```

## Ubiquiti EdgeRouter 4

```
root@EdgeRouter:/tmp# time ./mips64_mips64r2-linux-math-test-std
gcd impl = options.build.Impl.std
88616274
real    0m 16.62s
user    0m 16.56s
sys     0m 0.04s
root@EdgeRouter:/tmp# time ./mips64_mips64r2-linux-math-test-stein
gcd impl = options.build.Impl.stein
88616274
real    0m 8.93s
user    0m 8.92s
sys     0m 0.00s
```

## DLink DIR-853 A3 / MediaTek MT7621

```
root@Bridge:/tmp# time ./mipsel_mips32r2-linux-math-test-std
gcd impl = options.build.Impl.std
120522514
real    0m 6.67s
user    0m 6.66s
sys     0m 0.00s
root@Bridge:/tmp# time ./mipsel_mips32r2-linux-math-test-stein
gcd impl = options.build.Impl.stein
120522514
real    0m 4.34s
user    0m 4.32s
sys     0m 0.00s
```
