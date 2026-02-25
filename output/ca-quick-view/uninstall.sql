-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bizzview_settings', 'codersaiful_browse_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhook_%';
DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhook_secret_%';
DELETE FROM wp_options WHERE option_name LIKE 'bizzplugin_webhooks_%';

