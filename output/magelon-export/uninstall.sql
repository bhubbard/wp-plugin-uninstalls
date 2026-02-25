-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('magelon_export_interval', 'magelon_id_option', 'magelon_description_option', 'magelon_mpn_option', 'magelon_field_mapping', 'magelon_export_admin_notice', 'magelon_total_products');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_image_gallery');

