#!/bin/bash -l
#SBATCH -D /common/jyanglab/jyang21/courses/2022-agro932-lab
#SBATCH -o /common/jyanglab/jyang21/courses/2022-agro932-lab/slurm-log/xpclr-stdout-%j.txt
#SBATCH -e /common/jyanglab/jyang21/courses/2022-agro932-lab/slurm-log/xpclr-stderr-%j.txt
#SBATCH -J xpclr
#SBATCH -t 10:00:00
#SBATCH --mail-user=your_email_address@gmail.com
#SBATCH --mail-type=END #email if ends
#SBATCH --mail-type=FAIL #email if fails

module load xpclr/1.1

xpclr --input snp.vcf --out ./xpclr_res.txt  --format vcf --samplesA pop1.txt --samplesB pop2.txt --chr Mt --start 1 --stop 200000 --ld 0.7 --maxsnps 200 --minsnps 200 --size 10000 --step 5000

