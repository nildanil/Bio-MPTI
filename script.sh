#!/bin/bash
echo "Индексация референсного генома "
bwa index ref.fasta

echo "#############################"
echo "Обработка геномных данных резистентных к ингибитору клеток"
echo "#############################"

echo "Картирование resist_1_1 и resist_1_2 на референс"
bwa mem -t 2 ref.fasta resist_1_1.fastq resist_1_2.fastq > res1.sam
samtools view res1.sam -b -o res1.bam
echo "Картирование  resist_1_1 и resist_1_2 окончено"
echo "Сортировка файла res1.bam --> sortedRes1.bam"
samtools sort res1.bam -T temp1.txt -o sortedRes1.bam
samtools index sortedRes1.bam

echo "Картирование  resist_2_1 и resist_2_2 на референс"
bwa mem -t 2 ref.fasta resist_2_1.fastq.gz resist_2_2.fastq.gz > res2.sam
samtools view res2.sam -b -o res2.bam
echo "Картирование  resist_2_1 и resist_2_2 окончено"
echo "Сортировка файла res2.bam --> sortedRes2.bam"
samtools sort res2.bam -T temp2.txt -o sortedRes2.bam
samtools index sortedRes2.bam

echo "Картирование  resist_3_1 и resist_3_2 на референс"
bwa mem -t 2 ref.fasta resist_3_1.fastq.gz resist_3_2.fastq.gz > res3.sam
samtools view res3.sam -b -o res3.bam
echo "Картирование  resist_3_1 и resist_3_2 окончено"
echo "Сортировка файла res3.bam --> sortedRes3.bam"
samtools sort res3.bam -T temp3.txt -o sortedRes3.bam
samtools index sortedRes3.bam

echo "Картирование resist_4_1 и resist_4_2 на референс"
bwa mem -t 2 ref.fasta resist_4_1.fastq.gz resist_4_2.fastq.gz > res4.sam
samtools view res4.sam -b -o res4.bam
echo "Картирование resist_4_1 и resist_4_2 окончено"
echo "Сортировка файла res4.bam --> sortedRes4.bam"
samtools sort res4.bam -T temp4.txt -o sortedRes4.bam
samtools index sortedRes4.bam

echo "Картирование resist_5_1 и resist_5_2 на референс"
bwa mem -t 2 ref.fasta resist_5_1.fastq.gz resist_5_2.fastq.gz > res5.sam
samtools view res5.sam -b -o res5.bam
echo "Картирование resist_5_1 и resist_5_2 окончено"
echo "Сортировка файла res5.bam --> sortedRes5.bam"
samtools sort res5.bam -T temp5.txt -o sortedRes5.bam
samtools index sortedRes5.bam

echo "Картирование resist_6_1 и resist_6_2 на референс"
bwa mem -t 2 ref.fasta resist_6_1.fastq.gz resist_6_2.fastq.gz > res6.sam
samtools view res6.sam -b -o res6.bam
echo "Картирование resist_6_1 и resist_6_2 окончено"
echo "Сортировка файла res6.bam --> sortedRes6.bam"
samtools sort res6.bam -T temp6.txt -o sortedRes6.bam
samtools index sortedRes6.bam

echo "#############################"
echo "Обработка геномных данных чувствительных к ингибитору клеток"
echo "#############################"

echo "Картирование sensitive_1_1 и sensitive_1_2 на референс"
bwa mem -t 2 ref.fasta sensitive_1_1.fastq.gz sensitive_1_2.fastq.gz > sens1.sam
samtools view sens1.sam -b -o sens1.bam
echo "Картирование sensitive_1_1 и sensitive_1_2 окончено"
echo "Сортировка файла sens1.bam --> sortedSens1.bam"
samtools sort sens1.bam -T temp1.txt -o sortedSens1.bam
samtools index sortedSens1.bam

echo "Картирование sensitive_2_1 и sensitive_2_2 на референс"
bwa mem -t 2 ref.fasta sensitive_2_1.fastq.gz sensitive_2_2.fastq.gz > sens2.sam
samtools view sens2.sam -b -o sens2.bam
echo "Картирование sensitive_2_1 и sensitive_2_2 окончено"
echo "Сортировка файла sens2.bam --> sortedSens2.bam"
samtools sort sens2.bam -T temp2.txt -o sortedSens2.bam
samtools index sortedSens2.bam

echo "Картирование sensitive_3_1 и sensitive_3_2 на референс"
bwa mem -t 2 ref.fasta sensitive_3_1.fastq.gz sensitive_3_2.fastq.gz > sens3.sam
samtools view sens3.sam -b -o sens3.bam
echo "Картирование sensitive_3_1 и sensitive_3_2 окончено"
echo "Сортировка файла sens3.bam --> sortedSens3.bam"
samtools sort sens3.bam -T temp3.txt -o sortedSens3.bam
samtools index sortedSens3.bam

echo "Картирование sensitive_4_1 и sensitive_4_2 на референс"
bwa mem -t 2 ref.fasta sensitive_4_1.fastq.gz sensitive_4_2.fastq.gz > sens4.sam
samtools view sens4.sam -b -o sens4.bam
echo "Картирование sensitive_4_1 и sensitive_4_2 окончено"
echo "Сортировка файла sens4.bam --> sortedSens4.bam"
samtools sort sens4.bam -T temp4.txt -o sortedSens4.bam
samtools index sortedSens4.bam

echo "Картирование sensitive_5_1 и sensitive_5_2 на референс"
bwa mem -t 2 ref.fasta sensitive_5_1.fastq.gz sensitive_5_2.fastq.gz > sens5.sam
samtools view sens5.sam -b -o sens5.bam
echo "Картирование sensitive_5_1 и sensitive_5_2 окончено"
echo "Сортировка файла sens5.bam --> sortedSens5.bam"
samtools sort sens5.bam -T temp5.txt -o sortedSens5.bam
samtools index sortedSens5.bam

echo "Картирование sensitive_6_1 и sensitive_6_2 на референс"
bwa mem -t 2 ref.fasta sensitive_6_1.fastq.gz sensitive_6_2.fastq.gz > sens6.sam
samtools view sens6.sam -b -o sens6.bam
echo "Картирование sensitive_6_1 и sensitive_6_2 окончено"
echo "Сортировка файла sens6.bam --> sortedSens6.bam"
samtools sort sens6.bam -T temp6.txt -o sortedSens6.bam
samtools index sortedSens6.bam



 
 


 
 


 



 


 



 

