-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_avapg_rk_custom_video_type', '_avapg_rk_custom_video_width_desk', '_avapg_rk_custom_video_height_desk', '_avapg_rk_custom_video_width_mob', '_avapg_rk_custom_video_height_mob', '_avapg_rk_custom_video_mobile_break', '_avapg_rk_custom_video_thumbnail_field', '_avapg_rk_custom_video_field', '_avapg_rk_custom_video_label');
DELETE FROM wp_usermeta WHERE meta_key IN ('_avapg_rk_custom_video_type', '_avapg_rk_custom_video_width_desk', '_avapg_rk_custom_video_height_desk', '_avapg_rk_custom_video_width_mob', '_avapg_rk_custom_video_height_mob', '_avapg_rk_custom_video_mobile_break', '_avapg_rk_custom_video_thumbnail_field', '_avapg_rk_custom_video_field', '_avapg_rk_custom_video_label');
DELETE FROM wp_termmeta WHERE meta_key IN ('_avapg_rk_custom_video_type', '_avapg_rk_custom_video_width_desk', '_avapg_rk_custom_video_height_desk', '_avapg_rk_custom_video_width_mob', '_avapg_rk_custom_video_height_mob', '_avapg_rk_custom_video_mobile_break', '_avapg_rk_custom_video_thumbnail_field', '_avapg_rk_custom_video_field', '_avapg_rk_custom_video_label');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_avapg_rk_custom_video_type', '_avapg_rk_custom_video_width_desk', '_avapg_rk_custom_video_height_desk', '_avapg_rk_custom_video_width_mob', '_avapg_rk_custom_video_height_mob', '_avapg_rk_custom_video_mobile_break', '_avapg_rk_custom_video_thumbnail_field', '_avapg_rk_custom_video_field', '_avapg_rk_custom_video_label');

