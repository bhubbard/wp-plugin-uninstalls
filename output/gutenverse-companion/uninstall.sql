-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gutenverse-companion-imported-options', 'gutenverse_companion_template_options', 'gutenverse-style-cache-id', 'gutenverse-companion_wizard_init_done', 'gutenverse-companion-promotion-notice', 'gutenverse-companion-promotion-demo-banner', 'active_sitewide_plugins', 'gutenverse-companion-base-theme-notice', 'gutenverse-license', 'gutenverse_companion_unibiz_banner_cache', 'gutenverse_wp_remote_get_status_cache');
DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-global-variable-font-%';
DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-global-variable-google-%';
DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-companion-%';
DELETE FROM wp_options WHERE option_name LIKE '%_companion_synced_pattern_imported';
DELETE FROM wp_options WHERE option_name LIKE '%_synced_pattern_imported';
DELETE FROM wp_options WHERE option_name LIKE '%_dummy_inserted';
DELETE FROM wp_options WHERE option_name LIKE '%_content_inserted';
DELETE FROM wp_options WHERE option_name LIKE '%_wizard_setup_done';
DELETE FROM wp_options WHERE option_name LIKE '%_wizard_init_done';
DELETE FROM wp_options WHERE option_name LIKE '%_lite_plus_wizard_setup_done';
DELETE FROM wp_options WHERE option_name LIKE '%_lite_plus_wizard_init_done';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_import_source', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_import_source', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_import_source', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_import_source', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_menu_unique_key';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_menu_unique_key';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_menu_unique_key';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_menu_unique_key';

