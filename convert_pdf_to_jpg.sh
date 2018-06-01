#!/bin/bash
pdf_suffix=".pdf"
jpg_suffix=".jpg"
for i in *pdf;do
	new_i="${i%$pdf_suffix}"$pdf_suffix
	jpg_name="${i%$pdf_suffix}"$jpg_suffix
	mkdir ./"${i%$pdf_suffix}"	
	convert $new_i $jpg_name
	for j in *jpg;do
	  mv $j ./"${i%$pdf_suffix}"
  	done
done


