#!/usr/bin/env bash -C -e -u -o pipefail
cat 00284x16.masked.fa \
    | bcftools \
        consensus \
        00284x16.filtered.vcf.gz \
         \
         \
        > 00284x16.fa

cat <<-END_VERSIONS > versions.yml
"NFCORE_VIRALRECON:VIRALRECON:CONSENSUS_BCFTOOLS:BCFTOOLS_CONSENSUS":
    bcftools: $(bcftools --version 2>&1 | head -n1 | sed 's/^.*bcftools //; s/ .*$//')
END_VERSIONS
