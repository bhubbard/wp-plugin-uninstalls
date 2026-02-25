-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordpress_file_upload_table_log_version', 'wordpress_file_upload_table_userdata_version', 'wordpress_file_upload_table_dbxqueue_version', 'wfu_environment_variables', 'wordpress_file_upload_options', 'wfu_maintenance_options', 'wordpress_file_upload_last_idlog', 'wfu_params_index', 'wordpress_file_upload_pd_policies');
DELETE FROM wp_options WHERE option_name LIKE 'wfu_params_%';
DELETE FROM wp_options WHERE option_name LIKE 'wfu_gst_%';
DELETE FROM wp_options WHERE option_name LIKE '%_count';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('status', 'category', 'brief', 'action', 'last_update', 'WFU_Consent_Data');
DELETE FROM wp_usermeta WHERE meta_key IN ('status', 'category', 'brief', 'action', 'last_update', 'WFU_Consent_Data');
DELETE FROM wp_termmeta WHERE meta_key IN ('status', 'category', 'brief', 'action', 'last_update', 'WFU_Consent_Data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('status', 'category', 'brief', 'action', 'last_update', 'WFU_Consent_Data');

