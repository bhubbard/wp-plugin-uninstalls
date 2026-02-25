-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pricepress_allow_tracking', 'pricepress_tracking_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pricepress_enabled', '_pricepress_tiers', '_pricepress_show_table', '_pricepress_shipping_enabled', '_pricepress_shipping_qty');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pricepress_enabled', '_pricepress_tiers', '_pricepress_show_table', '_pricepress_shipping_enabled', '_pricepress_shipping_qty');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pricepress_enabled', '_pricepress_tiers', '_pricepress_show_table', '_pricepress_shipping_enabled', '_pricepress_shipping_qty');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pricepress_enabled', '_pricepress_tiers', '_pricepress_show_table', '_pricepress_shipping_enabled', '_pricepress_shipping_qty');

