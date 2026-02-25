-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oronjo_license_checked', 'oronjo_license');
DELETE FROM wp_options WHERE option_name LIKE 'oronjo_license_%';
DELETE FROM wp_options WHERE option_name LIKE '%_oronjoapikey';
DELETE FROM wp_options WHERE option_name LIKE '%_post_status';
DELETE FROM wp_options WHERE option_name LIKE '%_cat_id';
DELETE FROM wp_options WHERE option_name LIKE '%_tag';
DELETE FROM wp_options WHERE option_name LIKE '%_updated_only';
DELETE FROM wp_options WHERE option_name LIKE '%_use_image_tag';
DELETE FROM wp_options WHERE option_name LIKE '%_use_images';
DELETE FROM wp_options WHERE option_name LIKE '%_number_of_items';
DELETE FROM wp_options WHERE option_name LIKE '%_cart_position';
DELETE FROM wp_options WHERE option_name LIKE '%_cart_top_margin';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_license_valid';
DELETE FROM wp_options WHERE option_name LIKE 'oronjo_lic_check_%';
DELETE FROM wp_options WHERE option_name LIKE 'oronjo_lic_msg_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product._id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product._id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product._id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product._id');

