-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redq_se_elementor_widgets_settings', 'redq_se_installed', 'redq_se_version', 'redq_se_mega_menu_enable_list', '__validate_author_dtaddons__', 'redq_se_cache_keys');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_elementor_remote_info_api_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_se_author_name', '_se_author_meta', '_se_rating', '_supper_mega_menu', '_supper_mega_menu_layout', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_se_author_name', '_se_author_meta', '_se_rating', '_supper_mega_menu', '_supper_mega_menu_layout', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_se_author_name', '_se_author_meta', '_se_rating', '_supper_mega_menu', '_supper_mega_menu_layout', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_se_author_name', '_se_author_meta', '_se_rating', '_supper_mega_menu', '_supper_mega_menu_layout', '_wp_page_template');

