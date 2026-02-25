-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rimoq_settings', 'rimoq_resync_status', 'rimoq_version', 'rimoq_admin_errors', 'rimoq_api_call_details', 'rimoq_admin_success', 'rimoq_resync_queue', 'rimoq_resync_report', 'rimoq_welcome_notice', 'rimoq_api_status', 'rimoq_last_sync_time', 'rimoq_resync_status');
DELETE FROM wp_options WHERE option_name LIKE 'rimoq_error_%';
DELETE FROM wp_options WHERE option_name LIKE 'rimoq_success_%';
DELETE FROM wp_options WHERE option_name LIKE 'rimoq_bot_info_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone');

