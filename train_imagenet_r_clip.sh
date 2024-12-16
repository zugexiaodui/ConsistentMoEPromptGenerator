python train_eval.py -d imagenet_r \
    -m vit_base_patch16_clip_quickgelu_224.openai --head_dim_type text_dim --logit_type sim_imgtext --transform_type clip \
    --training_string w_gate w_noise experts head logit_scale --null_patterns experts w_gate \
    --prompt_len 4 --temperature 1 -et 2 -b 256 --lr 0.001 \
    --logit_scale_trainable True --refine_head True --use_null_space --data_root "DATA_ROOT" --seed 2024 $@
