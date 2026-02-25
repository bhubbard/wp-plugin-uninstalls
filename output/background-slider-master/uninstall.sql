-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bsm_easing_option_duration_settings_field', 'bsm_select_gallery_settings_field', 'bsm_animation_settings_field', 'bsm_view_mode_settings_field', 'bsm_skin_settings_field', 'bsm_disable_ratio_settings_field', 'bsm_arrow_nav_settings_field', 'bsm_thumb_nav_settings_field', 'bsm_slider_delay_settings_field', 'bsm_notice_get_pro_version_dismissed', 'bsm_auto_play_settings_field');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bsm-image-id', '_bsm_selected_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('bsm-image-id', '_bsm_selected_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('bsm-image-id', '_bsm_selected_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bsm-image-id', '_bsm_selected_gallery');

