-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_element_cache_ttl', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'woocommerce_tax_display_shop', 'woocommerce_myaccount_page_id', 'icl_sitepress_settings', 'uc_changelog_import_success', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'uc_changelog_import_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type', '_elementor_edit_mode', '_elementor_version', '_elementor_data', '_elementor_page_settings', '_elementor_css', '_wp_page_template', 'thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type', '_elementor_edit_mode', '_elementor_version', '_elementor_data', '_elementor_page_settings', '_elementor_css', '_wp_page_template', 'thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type', '_elementor_edit_mode', '_elementor_version', '_elementor_data', '_elementor_page_settings', '_elementor_css', '_wp_page_template', 'thumbnail_id', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type', '_elementor_edit_mode', '_elementor_version', '_elementor_data', '_elementor_page_settings', '_elementor_css', '_wp_page_template', 'thumbnail_id', '_wp_attachment_image_alt');

