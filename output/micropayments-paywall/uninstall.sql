-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trelismpw_enabled', 'trelismpw_product_price', 'lifetime_access_price', 'stripe_enabled', 'stripe_api_key', 'stripe_api_secret', 'stripe_webhook_secret');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_trelismpw_enabled', 'trelismpw_access', '_trelismpw_product_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_trelismpw_enabled', 'trelismpw_access', '_trelismpw_product_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_trelismpw_enabled', 'trelismpw_access', '_trelismpw_product_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_trelismpw_enabled', 'trelismpw_access', '_trelismpw_product_price');

