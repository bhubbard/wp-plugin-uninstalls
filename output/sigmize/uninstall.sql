-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sigmize_bearer_token', 'sigmize_auth_token', 'sigmize_connection_id', 'sigmize_workspace_uuid', 'sigmize_experiments', 'sigmize_last_sync_time', 'sigmize_gdpr_settings', 'sigmize_gdpr_enabled', 'sigmize_manual_sdk_loading', 'sigmize_settings', 'sigmize_last_status_sync');

