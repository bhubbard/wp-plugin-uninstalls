-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_fields_billing', 'wc_fields_shipping', 'wc_fields_additional', 'wpgsi_google_credential', 'wpgsi_google_token', 'wpgsi_logStatus', 'wpgsi_remote_data', 'wpgsi_integrationID', 'wpgsi_integration_original_status', 'wpgsi_installed', 'wpgsi_re_installed', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wpgsi_integrations', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('remoteUpdateStatus', 'wpgsi_lastFired_md5', '_form', 'spreadsheetID', 'worksheetID', 'showNumberOfRows', 'syncFrequency', 'disableColumns', 'worksheetName', 'IntegrationPlatform', 'DataSourceID', 'spreadsheetName', 'lastSyncTime');
DELETE FROM wp_usermeta WHERE meta_key IN ('remoteUpdateStatus', 'wpgsi_lastFired_md5', '_form', 'spreadsheetID', 'worksheetID', 'showNumberOfRows', 'syncFrequency', 'disableColumns', 'worksheetName', 'IntegrationPlatform', 'DataSourceID', 'spreadsheetName', 'lastSyncTime');
DELETE FROM wp_termmeta WHERE meta_key IN ('remoteUpdateStatus', 'wpgsi_lastFired_md5', '_form', 'spreadsheetID', 'worksheetID', 'showNumberOfRows', 'syncFrequency', 'disableColumns', 'worksheetName', 'IntegrationPlatform', 'DataSourceID', 'spreadsheetName', 'lastSyncTime');
DELETE FROM wp_commentmeta WHERE meta_key IN ('remoteUpdateStatus', 'wpgsi_lastFired_md5', '_form', 'spreadsheetID', 'worksheetID', 'showNumberOfRows', 'syncFrequency', 'disableColumns', 'worksheetName', 'IntegrationPlatform', 'DataSourceID', 'spreadsheetName', 'lastSyncTime');

