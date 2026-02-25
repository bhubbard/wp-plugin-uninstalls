-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_slp_gfl_mapping_form_id', '_slp_gfl_mapping_condition_enabled', '_slp_gfl_mapping_condition_field_id', '_slp_gfl_mapping_condition_operator', '_slp_gfl_mapping_condition_value', '_slp_gfl_mapping_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('_slp_gfl_mapping_form_id', '_slp_gfl_mapping_condition_enabled', '_slp_gfl_mapping_condition_field_id', '_slp_gfl_mapping_condition_operator', '_slp_gfl_mapping_condition_value', '_slp_gfl_mapping_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('_slp_gfl_mapping_form_id', '_slp_gfl_mapping_condition_enabled', '_slp_gfl_mapping_condition_field_id', '_slp_gfl_mapping_condition_operator', '_slp_gfl_mapping_condition_value', '_slp_gfl_mapping_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_slp_gfl_mapping_form_id', '_slp_gfl_mapping_condition_enabled', '_slp_gfl_mapping_condition_field_id', '_slp_gfl_mapping_condition_operator', '_slp_gfl_mapping_condition_value', '_slp_gfl_mapping_fields');

