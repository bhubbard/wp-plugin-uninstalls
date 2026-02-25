-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trackmage_client_id', 'trackmage_client_secret', 'trackmage_workspace', 'trackmage_sync_statuses', 'trackmage_sync_start_date', 'trackmage_trigger_sync', 'trackmage_delete_data', 'reset_plugin_settings', 'trackmage_integration', 'trackmage_webhook', 'trackmage_team', 'trackmage_webhook_username', 'trackmage_webhook_password', 'trackmage_order_status_aliases', 'trackmage_custom_order_statuses', 'trackmage_modified_order_statuses', 'trackmage-wizard-notice', 'trackmage_error', 'trackmage-remove-integration-error', 'trackmage_error_shown', 'trackmage_workspaces', 'trackmage_carriers', 'trackmage_order_statuses');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_trackmage_order_id', 'trackmage_carrier', 'trackmage_tracking_number', '_trackmage_tracking_page_link', '_trackmage_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_trackmage_order_id', 'trackmage_carrier', 'trackmage_tracking_number', '_trackmage_tracking_page_link', '_trackmage_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_trackmage_order_id', 'trackmage_carrier', 'trackmage_tracking_number', '_trackmage_tracking_page_link', '_trackmage_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_trackmage_order_id', 'trackmage_carrier', 'trackmage_tracking_number', '_trackmage_tracking_page_link', '_trackmage_hash');

