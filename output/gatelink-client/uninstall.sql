-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gatelink_used_nonces', 'gatelink_client_nonce_cleanup_last_run');
DELETE FROM wp_options WHERE option_name LIKE 'gatelink_client_nonce_%';

