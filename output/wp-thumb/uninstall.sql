-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpthumb_crop_pos', 'wpthumb_wm_position', 'use_watermark', 'wpthumb_wm_padding', 'wpthumb_wm_pre_resize', 'wpthumb_wm_mask', 'wm_position', 'wm_padding', 'wm_pre_resize', 'wm_mask');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpthumb_crop_pos', 'wpthumb_wm_position', 'use_watermark', 'wpthumb_wm_padding', 'wpthumb_wm_pre_resize', 'wpthumb_wm_mask', 'wm_position', 'wm_padding', 'wm_pre_resize', 'wm_mask');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpthumb_crop_pos', 'wpthumb_wm_position', 'use_watermark', 'wpthumb_wm_padding', 'wpthumb_wm_pre_resize', 'wpthumb_wm_mask', 'wm_position', 'wm_padding', 'wm_pre_resize', 'wm_mask');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpthumb_crop_pos', 'wpthumb_wm_position', 'use_watermark', 'wpthumb_wm_padding', 'wpthumb_wm_pre_resize', 'wpthumb_wm_mask', 'wm_position', 'wm_padding', 'wm_pre_resize', 'wm_mask');

