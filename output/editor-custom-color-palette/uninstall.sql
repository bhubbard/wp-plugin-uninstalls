-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eccp_settings_default_settings', 'eccp_multiple_setting', 'eccp_setting_editor_text_size', 'eccp_settings_custom_gutenberg_editor', 'eccp_settings_custom_gutenberg_block', 'eccp_settings_reusable_blocks', 'eccp_settings_elementor', 'eccp_settings_divi_theme', 'eccp_settings_custom_back_office', 'eccp_settings_custom_front_end', 'ecpp_multiple_setting', 'active_plugin_version', 'elementor_active_kit', 'et_divi', 'wpseo_social');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_page_settings', '_wp_attachment_image_alt', 'last_login', 'countdown_timer_date_events', 'remove_blocks_before_content', 'remove_blocks_after_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_page_settings', '_wp_attachment_image_alt', 'last_login', 'countdown_timer_date_events', 'remove_blocks_before_content', 'remove_blocks_after_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_page_settings', '_wp_attachment_image_alt', 'last_login', 'countdown_timer_date_events', 'remove_blocks_before_content', 'remove_blocks_after_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_page_settings', '_wp_attachment_image_alt', 'last_login', 'countdown_timer_date_events', 'remove_blocks_before_content', 'remove_blocks_after_content');

