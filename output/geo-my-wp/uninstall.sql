-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmw_version', 'gmw_options', 'gmw_addons_status', 'gmw_license_data', 'gmw_addons_data', 'gmw_internal_cache_status', 'gmw_tracking_notice', 'gmw_tracking_last_send', 'gmw_license_keys', 'gmw_premium_plugin_status', 'gmw_old_locations_tables_exist', 'gmw_old_locations_tables_updated', 'gmw_importer_bp_xprofile_fields', 'gmw_importer_post_meta_fields', 'gmw_importer_user_meta_fields', 'active_sitewide_plugins', 'gmw_forms', 'gmw_forms_old', 'gmw_extensions_updater', 'gmw_addons_version', 'gmw_forms_table_updated', 'gmw_db_version', 'gmw_extensions_feed', 'gmw_verify_license_keys', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_fields';
DELETE FROM wp_options WHERE option_name LIKE 'gmw_geocoded_%';
DELETE FROM wp_options WHERE option_name LIKE '%_meta';
DELETE FROM wp_options WHERE option_name LIKE '%_id';
DELETE FROM wp_options WHERE option_name LIKE 'gmw_user_ids_by_role_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wppl_days_hours', '_gmw_locations_export', 'gmw_featured_object', 'select_options', 'bp_ps_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wppl_days_hours', '_gmw_locations_export', 'gmw_featured_object', 'select_options', 'bp_ps_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wppl_days_hours', '_gmw_locations_export', 'gmw_featured_object', 'select_options', 'bp_ps_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wppl_days_hours', '_gmw_locations_export', 'gmw_featured_object', 'select_options', 'bp_ps_options');

