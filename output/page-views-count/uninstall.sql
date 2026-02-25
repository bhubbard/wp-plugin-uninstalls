-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a3_pvc_version', 'pvc_just_installed', 'a3rev_pvc_plugin', 'a3rev_auth_pvc', 'pvc_settings', 'pvc_reset_all_individual', 'pvc_current_rest_api_enabled', 'pvc_endpoint_rest_api_disabled_dismiss', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion';
DELETE FROM wp_options WHERE option_name LIKE '%_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list';
DELETE FROM wp_options WHERE option_name LIKE '%_style_version';
DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open';
DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes';
DELETE FROM wp_options WHERE option_name LIKE '%_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_a3_pvc_activated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_a3_pvc_activated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_a3_pvc_activated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_a3_pvc_activated');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes';

