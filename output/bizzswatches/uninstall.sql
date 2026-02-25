-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bizzswatches_settings', 'codersaiful_browse_plugins', 'bizzswatches_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhook_%';
DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhook_secret_%';
DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhooks_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bizzswatches_color', 'bizzswatches_image', '_bizzswatches_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('bizzswatches_color', 'bizzswatches_image', '_bizzswatches_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('bizzswatches_color', 'bizzswatches_image', '_bizzswatches_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bizzswatches_color', 'bizzswatches_image', '_bizzswatches_settings');

