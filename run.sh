cd ${HOME}/spectre
sh build.sh
cd ${HOME}/Microarchitectural_defence_of_spectre_attack
#build/X86/gem5.opt --outdir no_defence sample.py --fuzz_tsc False --naive False --taint False
#build/X86/gem5.opt --outdir fuzz_tsc sample.py --fuzz_tsc True --naive False --taint False --fuzz_tsc_extent 1 --fuzz_tsc_rand False
build/X86/gem5.opt --outdir fuzz_tsc sample.py --fuzz_tsc True --naive False --taint False --fuzz_tsc_extent 10 --fuzz_tsc_rand True
#build/X86/gem5.opt --outdir fuzz_tsc sample.py --fuzz_tsc True --naive False --taint False --fuzz_tsc_extent 50 --fuzz_tsc_rand False
#build/X86/gem5.opt --outdir fuzz_tsc sample.py --fuzz_tsc True --naive False --taint False --fuzz_tsc_extent 100 --fuzz_tsc_rand False
#build/X86/gem5.opt --outdir naive sample.py --fuzz_tsc False --naive True --taint False
#build/X86/gem5.opt --outdir taint sample.py --fuzz_tsc False --naive False --taint True
