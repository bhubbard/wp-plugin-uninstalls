-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_infoplus_order_source_id', 'wc_infoplus_wc_api_key_id', 'wc_infoplus_url', 'wc_infoplus_api_key', 'wc_infoplus_order_update_auto_complete', 'wc_infoplus_debug_mode', 'active_sitewide_plugins', 'woocommerce_force_ssl_checkout', 'wc_infoplus_configured');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_infoplus_status', '_wc_infoplus_fulfillment', '_wc_infoplus_orders', '_api_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_infoplus_status', '_wc_infoplus_fulfillment', '_wc_infoplus_orders', '_api_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_infoplus_status', '_wc_infoplus_fulfillment', '_wc_infoplus_orders', '_api_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_infoplus_status', '_wc_infoplus_fulfillment', '_wc_infoplus_orders', '_api_version');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed_messages';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed_messages';

