-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('storeradar_email_tracking_enabled', 'storeradar_show_activation_notice', 'storeradar_error_logs', 'storeradar_stored_carts', 'storeradar_analytics_sessions', 'storeradar_analytics_pageviews', 'storeradar_analytics_summary');
DELETE FROM wp_options WHERE option_name LIKE 'storeradar_guest_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_storeradar_cart_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('_storeradar_cart_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('_storeradar_cart_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_storeradar_cart_token');

