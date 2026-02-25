-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bizzorder_settings', 'codersaiful_browse_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhook_%';
DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhook_secret_%';
DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhooks_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bizzorder_is_preorder', '_bizzorder_preorder_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bizzorder_is_preorder', '_bizzorder_preorder_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bizzorder_is_preorder', '_bizzorder_preorder_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bizzorder_is_preorder', '_bizzorder_preorder_date');

