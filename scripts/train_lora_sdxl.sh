accelerate launch train_text_to_image_lora.py \
--pretrained_model_name_or_path "stabilityai/stable-diffusion-xl-base-1.0" \
--pretrained_vae_model_name_or_path "madebyollin/sdxl-vae-fp16-fix" \
--annotation_file annotation.jsonl \
--regularization_annotation regularization_images.jsonl \
--resolution=1024 --center_crop --random_flip \
--train_batch_size 10 \
--num_train_epochs 99 \
--checkpointing_steps 5000 \
--learning_rate 1e-5 \
--lr_scheduler constant \
--lr_warmup_steps 0 \
--seed 42 \
--output_dir "./lora_output_sdxl" \
--validation_prompt_file validation_prompts.txt \
--validation_iters 5000 \
--report_to wandb \
--resume_from_checkpoint latest \
--dataloader_num_workers 8 \
--max_train_steps 20000