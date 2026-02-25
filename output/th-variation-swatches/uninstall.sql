-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('th_variation_swatches');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_attribute_color', 'product_attribute_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_attribute_color', 'product_attribute_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_attribute_color', 'product_attribute_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_attribute_color', 'product_attribute_image');

