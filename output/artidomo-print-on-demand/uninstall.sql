-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('artidomo_pod_version', 'artidomo_pod_installed_at', 'artidomo_connected', 'artidomo_pod_migrated', 'artidomo_shop_id', 'artidomo_api_key_id', 'artidomo_consumer_key', 'artidomo_consumer_secret', 'artidomo_webhook_secret', 'artidomo_connected_at', 'artidomo_webhook_id', 'artidomo_detected_plugins', 'artidomo_last_detection', 'artidomo_connection_token', 'artidomo_plugin_update_info', 'update_plugins', 'artidomo_pod_custom_update', 'artidomo_pod_wporg_update');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_artidomo_sku', '_artidomo_printfilename', '_artidomo_personalization_provider');
DELETE FROM wp_usermeta WHERE meta_key IN ('_artidomo_sku', '_artidomo_printfilename', '_artidomo_personalization_provider');
DELETE FROM wp_termmeta WHERE meta_key IN ('_artidomo_sku', '_artidomo_printfilename', '_artidomo_personalization_provider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_artidomo_sku', '_artidomo_printfilename', '_artidomo_personalization_provider');

