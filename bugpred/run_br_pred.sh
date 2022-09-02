CUDA_LAUNCH_BLOCKING=1 python run_br_pred.py \
  --model_name_or_path Colorful/RTA \
  --train_file ./dataset/priority_train.csv \
  --validation_file ./dataset/priority_valid.csv \
  --test_file ./dataset/priority_test.csv \
  --cache_dir ./cache_dir \
  --do_train \
  --do_eval \
  --do_predict \
  --max_seq_length 256 \
  --per_device_train_batch_size 32 \
  --learning_rate 5e-6 \
  --num_train_epochs 10 \
  --save_steps 10000 \
  --output_dir ./results_priority
