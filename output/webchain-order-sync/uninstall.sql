-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webchain_user_email', 'webchain_wallet', 'webchain_connection_status', 'webchain_sync_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_webchain_tx_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_webchain_tx_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_webchain_tx_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_webchain_tx_hash');

