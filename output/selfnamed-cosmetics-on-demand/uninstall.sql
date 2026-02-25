-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('selfnamed_plugin_version', 'selfnamed_platform_access_token', '_selfnamed_billing_information', 'selfnamed_api');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_volume', '_product_image_gallery', 'selfnamed_orders_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('_volume', '_product_image_gallery', 'selfnamed_orders_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('_volume', '_product_image_gallery', 'selfnamed_orders_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_volume', '_product_image_gallery', 'selfnamed_orders_per_page');

