-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yay-swatches-sold-out-customize-settings', 'yay-swatches-swatch-customize-settings', 'yay-swatches-button-customize-settings', 'yayswatches_reviewed');
DELETE FROM wp_options WHERE option_name LIKE 'yay-swatches-attribute-style-%';
DELETE FROM wp_options WHERE option_name LIKE 'yay-swatches-swatch-color-%';
DELETE FROM wp_options WHERE option_name LIKE 'yay-swatches-show-hide-color-%';
DELETE FROM wp_options WHERE option_name LIKE 'yay-swatches-swatch-dual-color-%';
DELETE FROM wp_options WHERE option_name LIKE 'yay-swatches-swatch-image-%';
DELETE FROM wp_options WHERE option_name LIKE 'yay-swatches-attribute-show-archive-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('yay_swatches_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('yay_swatches_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('yay_swatches_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('yay_swatches_product_attributes');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

