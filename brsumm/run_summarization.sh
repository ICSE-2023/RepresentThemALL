CUDA_LAUNCH_BLOCKING=1 python run_summarization.py \
  --model_name_or_path ../pretrained_models/burebert \
  --train_file ./dataset/sum_train_clean.csv \
  --validation_file ./dataset/sum_valid_clean.csv \
  --test_file ./dataset/sum_test_clean.csv \
  --cache_dir ./cache_dir \
  --text_column 'input' \
  --summary_column 'target' \
  --pad_to_max_length \
  --do_train \
  --do_eval \
  --do_predict \
  --predict_with_generate \
  --preprocessing_num_workers 12 \
  --max_source_length 512 \
  --max_target_length 20 \
  --val_max_target_length 20 \
  --num_beams 5 \
  --per_device_train_batch_size 32 \
  --per_device_eval_batch_size 32 \
  --learning_rate 5e-5 \
  --num_train_epochs 10 \
  --save_steps 10000 \
  --output_dir ./results_sum_512
