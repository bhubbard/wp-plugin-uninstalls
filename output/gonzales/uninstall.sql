-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('factory_plugin_versions', 'active_sitewide_plugins', 'wbcr_factory_google_fonts', 'wbcr_factory_google_fonts_raw');
DELETE FROM wp_options WHERE option_name LIKE '%_is_active';
DELETE FROM wp_options WHERE option_name LIKE '%assets_manager_options';
DELETE FROM wp_options WHERE option_name LIKE '%for_admin_only';
DELETE FROM wp_options WHERE option_name LIKE '%assets_states';
DELETE FROM wp_options WHERE option_name LIKE '%deactive_preinstall_components';
DELETE FROM wp_options WHERE option_name LIKE '%backend_assets_states';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wgz_farewell_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('wgz_farewell_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('wgz_farewell_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wgz_farewell_dismissed');

