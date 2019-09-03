rm -rf train/*
tesstrain.sh --fonts_dir fonts \
	--fontlist 'Arial Regular' \
	--lang ara \
	--linedata_only \
	--langdata_dir langdata_lstm \
	--tessdata_dir tesseract/tessdata \
	--save_box_tiff \
	--maxpages 5000 \
	--output_dir train
