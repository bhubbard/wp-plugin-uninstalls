-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('caaps_amazon-product-shop-settings', 'caaps_amazon-product-shop-displayoptions', 'caaps_amazonshop_frontpageid');
DELETE FROM wp_options WHERE option_name LIKE 'caaps_transient_%';

