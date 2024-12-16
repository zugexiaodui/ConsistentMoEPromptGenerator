python train_eval.py -d cifar100 -t 20 \
    -m vit_base_patch16_224.augreg_in21k --head_dim_type task_classes --logit_type head_out --training_string w_gate w_noise experts head --null_patterns experts w_gate \
    --temperature 28 --prompt_len 4 -b 360 --use_null_space --data_root "DATA_ROOT" --seed 2024 $@
