-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('storebird_api_key', 'storebird_secret_key', 'storebird_enabled', 'storebird_admin_only', 'storebird_connected_via', 'storebird_last_sync', 'storebird_product_count', 'storebird_version', 'storebird_api_url', 'storebird_dashboard_url', 'storebird_connection_verified', 'storebird_connect_message', 'storebird_widget_config', 'storebird_sync_lock', 'storebird_sync_progress', 'storebird_sync_products', 'storebird_sync_product_ids', 'storebird_sync_count', 'storebird_pending_connect', 'storebird_auto_connect_cooldown', 'storebird_redirect_after_connect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_estimated_delivery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_estimated_delivery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_estimated_delivery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_estimated_delivery');

