-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_sf_sync_admin_email', 'mo_sf_sync_admin_password', 'mo_sf_sync_admin_customer_key', 'mo_sf_sync_admin_api_key', 'mo_sf_sync_customer_token', 'mo_sf_sync_admin_phone', 'mo_sf_sync_registration_status', 'mo_sf_sync_verify_customer', 'mo_sf_sync_free_version', 'mo_sf_sync_config', 'mo_sf_sync_advanced_search_username', 'mo_sf_sync_advanced_search_action', 'mo_sf_sync_advanced_search_direction', 'mo_sf_sync_advanced_search_status', 'mo_sf_sync_advanced_search_from_date', 'mo_sf_sync_advanced_search_to_date', 'mo_sf_sync_keep_settings_on_deletion', 'mo_sf_sync_advanced_reports', 'vl_check_t', 'vl_check_s', 'mo_sf_sync_integration_trial_notice_dismiss_time', 'mo_sf_sync_normal_trial_notice_dismiss_time', 'mo_sf_sync_made_integration_trial_request', 'mo_sf_sync_plugin_activated', 'mo_sf_sync_made_trial_request');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('salesforce_ID');
DELETE FROM wp_usermeta WHERE meta_key IN ('salesforce_ID');
DELETE FROM wp_termmeta WHERE meta_key IN ('salesforce_ID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('salesforce_ID');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ID';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ID';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ID';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ID';

