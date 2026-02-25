-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dsxmlrpc-notice-forever', 'dsxmlrpc-settings');
DELETE FROM wp_options WHERE option_name LIKE 'pand-%';

