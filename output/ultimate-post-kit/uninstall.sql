-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bdt_biggopti_dismissals', 'upk_white_label_enabled', 'upk_white_label_hide_license', 'upk_white_label_bdtupk_hide', 'upk_white_label_title', 'upk_white_label_icon', 'upk_white_label_icon_id', 'upk_white_label_logo', 'upk_white_label_logo_id', 'ultimate_post_kit_license_title_status', 'upk_white_label_access_token', 'upk_localhost_email_data', 'upk_custom_css', 'upk_custom_js', 'upk_custom_css_2', 'upk_custom_js_2', 'upk_excluded_pages', 'ultimate_post_kit_license_key', 'ultimate_post_kit_license_email', 'ultimate_post_kit_active_modules', 'bdtupk_setup_wizard_completed', 'ultimate_post_kit_elementor_extend', 'ultimate_post_kit_api_settings', 'elementor_viewport_lg', 'elementor_viewport_md');
DELETE FROM wp_options WHERE option_name LIKE '%_installed';
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode', 'upk-category-image-id', '_upk_video_link_meta_key', '_upk_audio_link_meta_key', '_upk_audio_title_meta_key', '_upk_artist_name_meta_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode', 'upk-category-image-id', '_upk_video_link_meta_key', '_upk_audio_link_meta_key', '_upk_audio_title_meta_key', '_upk_artist_name_meta_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode', 'upk-category-image-id', '_upk_video_link_meta_key', '_upk_audio_link_meta_key', '_upk_audio_title_meta_key', '_upk_artist_name_meta_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode', 'upk-category-image-id', '_upk_video_link_meta_key', '_upk_audio_link_meta_key', '_upk_audio_title_meta_key', '_upk_artist_name_meta_key');

