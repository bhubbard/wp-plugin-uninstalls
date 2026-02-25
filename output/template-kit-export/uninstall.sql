-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'update_core', 'active_sitewide_plugins', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tk_image_user_data', 'envato_tk_post_meta', '_thumbnail_id', '_elementor_page_settings', '_wp_page_template', '_elementor_data', '_elementor_conditions');
DELETE FROM wp_usermeta WHERE meta_key IN ('tk_image_user_data', 'envato_tk_post_meta', '_thumbnail_id', '_elementor_page_settings', '_wp_page_template', '_elementor_data', '_elementor_conditions');
DELETE FROM wp_termmeta WHERE meta_key IN ('tk_image_user_data', 'envato_tk_post_meta', '_thumbnail_id', '_elementor_page_settings', '_wp_page_template', '_elementor_data', '_elementor_conditions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tk_image_user_data', 'envato_tk_post_meta', '_thumbnail_id', '_elementor_page_settings', '_wp_page_template', '_elementor_data', '_elementor_conditions');

