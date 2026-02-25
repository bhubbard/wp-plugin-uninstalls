-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('classic-editor-replace', 'wp_dark_mode_admin_enabled_classic_editor', 'wp_dark_mode_activated', 'hide_wp_dark_mode_recommended_plugins', 'wp_dark_mode_upgraded_version', 'wp_dark_mode_preset_sync_version', 'wp_dark_mode_advanced', 'wp_dark_mode_wc', 'wp_dark_mode_color', 'wp_dark_mode_image_settings', 'wp_dark_mode_video_settings', 'wp_dark_mode_color_presets', 'wp_dark_mode_color_preset_id', 'wp_dark_mode_enabled', 'wpdm_social_share_enable', 'wpdm_social_share_init', 'wpdm_social_share_button_size', 'wp_dark_mode_recommended_plugins', 'wp_dark_mode_promo_countdown_timer');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE 'wpdm_social_share_%';

