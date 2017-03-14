# Measurably evolving populations

This repository hosts curated data sets (alignments) from [measurably evolving populations](http://www.sciencedirect.com/science/article/pii/S0169534703002167).

Most data sets are from fast-evolving RNA viruses.

### Dengue virus serotype 2
These are 90 [full genome](https://github.com/maxbiostat/MEP_data/blob/master/denv_2/denv2_genome.fasta) or just [envelope](https://github.com/maxbiostat/MEP_data/blob/master/denv_2/denv2_env.fasta) sequences from DENV-2 isolates from the Americas, ranging from  1987 to 2007.
They were obtained from a bigger data set consisting of the [Broad Institute's Dengue Virus Portal](http://www.broadinstitute.org/annotation/viral/Dengue/) (2382 full genomes) and then [subsampled](https://github.com/maxbiostat/treetime/blob/master/data/genesis/create_denv.R) to have at most five samples from each year.
The full data base can be found [here](https://github.com/maxbiostat/treetime/blob/master/data/raw/Dengue_alignment.fasta).
Note that sequences were downloaded pre-aligned.

### Human H3N2 Influenza A
This data set contains 308 hemagglutinin (HA) [sequences](https://github.com/maxbiostat/MEP_data/blob/master/flu_ha/flu_HA.fasta).
All human H3N2 sequences longer than 1700 base pairs were dowloaded from the [Influenza Research Database](http://www.fludb.org/brc/home.spg?decorator=influenza) totalising 8455 sequences.
These were [downsampled](https://github.com/maxbiostat/treetime/blob/master/data/genesis/create_Influenza.R) in order for us to have at most five sequences from each year after 1968.
Sequences were then aligned by codons using the [MAFFT](http://mafft.cbrc.jp/alignment/software/) program called from inside the [Geneious](http://www.geneious.com/) software package.

### HIV subtype B
This data set consists of 187 gag-pol HIV subtype B sequences. 
All reasonably complete gag-pol sequences from HIV subtype B were dowloaded from the [Los Alamos Database](http://www.hiv.lanl.gov/content/sequence/HIV/mainpage.html) along with the relevant metadata and then subsampled to achieve at most five sequences from each year after 1983.
This data set can be found [here](https://github.com/maxbiostat/MEP_data/blob/master/hiv_pol/hiv_pol_USA.fasta) and was created using [this](https://github.com/maxbiostat/treetime/blob/master/data/genesis/create_hiv_USA.R).
Note that sequences were downloaded pre-aligned.
