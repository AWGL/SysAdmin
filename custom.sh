thmunge () {
    case ":${PATH}:" in
        *:"$1":*)
            ;;
        *)
            if [ "$2" = "after" ] ; then
                PATH=$PATH:$1
            else
                PATH=$1:$PATH
            fi
    esac
}

# ADDED BY PJG

pathmunge /share/apps/annovar
pathmunge /share/apps/BAMStats
pathmunge /share/apps/bamtools
pathmunge /share/apps/bcftools
pathmunge /share/apps/bcl2fastq
pathmunge /share/apps/bowtie
pathmunge /share/apps/bowtie2
pathmunge /share/apps/bwa
pathmunge /share/apps/cufflinks
pathmunge /share/apps/fastqc
pathmunge /share/apps/GATK
pathmunge /share/apps/htslib
pathmunge /share/apps/igvtools
pathmunge /share/apps/picard-tools
pathmunge /share/apps/R
pathmunge /share/apps/samtools
pathmunge /share/apps/tmap
pathmunge /share/apps/tophat
pathmunge /share/apps/trimmomatic
pathmunge /share/apps/varscan
pathmunge /share/apps/vcftools


unset pathmunge

