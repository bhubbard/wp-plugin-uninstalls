-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clevernode_plugin_settings', 'clevernode_account_data', 'clevernode-admin-notice-connection', 'clevernode-admin-notice-activation', 'clevernode-review-notice', 'clevernode-review-notice-check', 'clevernode-review-notice-flag');
DELETE FROM wp_options WHERE option_name LIKE 'clevenode-admin-notice-%';

