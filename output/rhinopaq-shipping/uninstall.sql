-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rhinopaq-enabled', 'rhinopaq-shipping-product-id', 'rhinopaq-standard-shipping', 'woocommerce_placeholder_image', 'rhinopaq-plugin-id', 'rhinopaq-smart-enabled', 'rhinopaq-shipping-rhino-b-35x20x5-id', 'rhinopaq-shipping-rhino-b-25x25x10-id', 'rhinopaq-1-enabled', 'rhinopaq-4-enabled', 'rhinopaq-clearance');
DELETE FROM wp_options WHERE option_name LIKE '%-id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price');

