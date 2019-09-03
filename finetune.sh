rm -rf output/*
OMP_THREAD_LIMIT=8 lstmtraining \
	--continue_from ara.lstm \
	--model_output output/noba \
	--traineddata tesseract/tessdata/ara.traineddata \
	--train_listfile train/ara.training_files.txt \
	--max_iterations 400
