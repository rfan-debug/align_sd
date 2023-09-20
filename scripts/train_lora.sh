accelerate launch train_text_to_image_lora.py \
--pretrained_model_name_or_path CompVis/stable-diffusion-v1-4 \
--annotation_file annotation.jsonl \
--regularization_annotation regularization_images.jsonl \
--resolution 512 \
--train_batch_size 10 \
--num_train_epochs 99 \
--checkpointing_steps 5000 \
--learning_rate 1e-5 \
--lr_scheduler constant \
--lr_warmup_steps 0 \
--seed 42 \
--output_dir "./lora_output" \
--validation_prompt_file validation_prompts.txt \
--validation_iters 5000 \
--report_to tensorboard \
--resume_from_checkpoint latest \
--dataloader_num_workers 4 \
--max_train_steps 10000