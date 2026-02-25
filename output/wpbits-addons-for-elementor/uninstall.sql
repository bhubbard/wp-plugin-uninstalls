-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wpbits_afe_template_locations', 'wpbits_afe_settings', 'elementor_viewport_md', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'wpbits-afe-pro-tmplts', 'wpbits-afe-pro-lib');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_wpbits_afe_image_hash', '_elementor_edit_mode', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_wpbits_afe_image_hash', '_elementor_edit_mode', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_wpbits_afe_image_hash', '_elementor_edit_mode', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_wpbits_afe_image_hash', '_elementor_edit_mode', '_wp_attachment_image_alt');

