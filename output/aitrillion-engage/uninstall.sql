-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_aitrillion_engage_api_key', '_aitrillion_engage_api_password', '_aitrillion_engage_script_url', '_aitrillion_engage_created_users', '_aitrillion_engage_failed_sync_users', '_aitrillion_engage_updated_users', '_aitrillion_engage_deleted_users', '_aitrillion_engage_script_version', 'aitrillion_engage_clear_log_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone_number', 'modified_date', '_aitrillion_engage_user_sync', '_aitrillion_engage_sync_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone_number', 'modified_date', '_aitrillion_engage_user_sync', '_aitrillion_engage_sync_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone_number', 'modified_date', '_aitrillion_engage_user_sync', '_aitrillion_engage_sync_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone_number', 'modified_date', '_aitrillion_engage_user_sync', '_aitrillion_engage_sync_date');

