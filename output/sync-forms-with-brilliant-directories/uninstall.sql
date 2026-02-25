-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brildir_sfwbd_allow_lead', 'brildir_sfwbd_api_status', 'brildir_sfwbd_api_key', 'brildir_sfwbd_base_url', 'brildir_sfwbd_used_form_actions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_brildir_sfwbd_create_option', '_brildir_sfwbd_field_map', '_brildir_sfwbd_field_map_custom', '_brildir_sfwbd_form_title', '_brildir_sfwbd_subscription_id', '_brildir_sfwbd_sync_count', '_brildir_sfwbd_last_sync_date', '_brildir_sfwbd_form_plugin', '_brildir_sfwbd_plugin_name', '_brildir_sfwbd_form_id', '_brildir_sfwbd_create_type', '_elementor_data', '_brildir_sfwbd_sync_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_brildir_sfwbd_create_option', '_brildir_sfwbd_field_map', '_brildir_sfwbd_field_map_custom', '_brildir_sfwbd_form_title', '_brildir_sfwbd_subscription_id', '_brildir_sfwbd_sync_count', '_brildir_sfwbd_last_sync_date', '_brildir_sfwbd_form_plugin', '_brildir_sfwbd_plugin_name', '_brildir_sfwbd_form_id', '_brildir_sfwbd_create_type', '_elementor_data', '_brildir_sfwbd_sync_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_brildir_sfwbd_create_option', '_brildir_sfwbd_field_map', '_brildir_sfwbd_field_map_custom', '_brildir_sfwbd_form_title', '_brildir_sfwbd_subscription_id', '_brildir_sfwbd_sync_count', '_brildir_sfwbd_last_sync_date', '_brildir_sfwbd_form_plugin', '_brildir_sfwbd_plugin_name', '_brildir_sfwbd_form_id', '_brildir_sfwbd_create_type', '_elementor_data', '_brildir_sfwbd_sync_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_brildir_sfwbd_create_option', '_brildir_sfwbd_field_map', '_brildir_sfwbd_field_map_custom', '_brildir_sfwbd_form_title', '_brildir_sfwbd_subscription_id', '_brildir_sfwbd_sync_count', '_brildir_sfwbd_last_sync_date', '_brildir_sfwbd_form_plugin', '_brildir_sfwbd_plugin_name', '_brildir_sfwbd_form_id', '_brildir_sfwbd_create_type', '_elementor_data', '_brildir_sfwbd_sync_status');

