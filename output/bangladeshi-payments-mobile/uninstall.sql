-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bkash_phone', '_nagad_phone', '_rocket_phone', '_upay_phone', '_bkash_transaction_id', '_nagad_transaction_id', '_rocket_transaction_id', '_upay_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bkash_phone', '_nagad_phone', '_rocket_phone', '_upay_phone', '_bkash_transaction_id', '_nagad_transaction_id', '_rocket_transaction_id', '_upay_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bkash_phone', '_nagad_phone', '_rocket_phone', '_upay_phone', '_bkash_transaction_id', '_nagad_transaction_id', '_rocket_transaction_id', '_upay_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bkash_phone', '_nagad_phone', '_rocket_phone', '_upay_phone', '_bkash_transaction_id', '_nagad_transaction_id', '_rocket_transaction_id', '_upay_transaction_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_transaction_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_transaction_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_transaction_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_transaction_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_phone';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_phone';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_phone';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_phone';

