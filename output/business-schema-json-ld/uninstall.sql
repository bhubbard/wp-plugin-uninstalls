-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'bs_products_name', 'bs_products_description', 'bs_products_image_url', 'bs_products_brand');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'bs_products_name', 'bs_products_description', 'bs_products_image_url', 'bs_products_brand');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'bs_products_name', 'bs_products_description', 'bs_products_image_url', 'bs_products_brand');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'bs_products_name', 'bs_products_description', 'bs_products_image_url', 'bs_products_brand');

