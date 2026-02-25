-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frame', 'border', 'wishlist_page', 'wish', 'cat_list', 'count_frame', 'cover', 'register', 'wpcat_functionnal_return_result');
DELETE FROM wp_options WHERE option_name LIKE '%autoresize';
DELETE FROM wp_options WHERE option_name LIKE '%_backgroung_choose';
DELETE FROM wp_options WHERE option_name LIKE '%_backgroung';
DELETE FROM wp_options WHERE option_name LIKE '%_backgroung_image_left';
DELETE FROM wp_options WHERE option_name LIKE '%_backgroung_image_right';
DELETE FROM wp_options WHERE option_name LIKE '%_add_to_wish_but';
DELETE FROM wp_options WHERE option_name LIKE '%_arrow_prev';
DELETE FROM wp_options WHERE option_name LIKE '%_arrow_next';
DELETE FROM wp_options WHERE option_name LIKE '%_width_wish';
DELETE FROM wp_options WHERE option_name LIKE '%_height_wish';
DELETE FROM wp_options WHERE option_name LIKE '%_isTitle';
DELETE FROM wp_options WHERE option_name LIKE '%_isPrice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('numbpage', 'wp_catalog', '_regular_price', '_sale_price', 'wishlist');
DELETE FROM wp_usermeta WHERE meta_key IN ('numbpage', 'wp_catalog', '_regular_price', '_sale_price', 'wishlist');
DELETE FROM wp_termmeta WHERE meta_key IN ('numbpage', 'wp_catalog', '_regular_price', '_sale_price', 'wishlist');
DELETE FROM wp_commentmeta WHERE meta_key IN ('numbpage', 'wp_catalog', '_regular_price', '_sale_price', 'wishlist');

