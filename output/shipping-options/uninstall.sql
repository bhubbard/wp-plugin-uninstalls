-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('product_shipping_options_number', 'display_shipping', 'product_shipping_cost', 'product_shipping_label', 'general_shipping_settings', 'shipping_options_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_shipping%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_shipping%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_shipping%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_shipping%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_shipping-label%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_shipping-label%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_shipping-label%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_shipping-label%';

