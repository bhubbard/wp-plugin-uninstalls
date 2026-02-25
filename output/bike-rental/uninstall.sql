-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bkrntl_options', 'bkng_attributes', 'bstwbsftwppdtplgns_options', 'sldr_options', 'recently_activated', 'active_sitewide_plugins', 'update_plugins', 'bws_plugins_update');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_db_version';
DELETE FROM wp_options WHERE option_name LIKE 'default_%';
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bkng_rental_interval', 'bkng_exclude_from_search', 'bws_bkng_products_images', 'bkng_term_address', 'bkng_sku', 'bkng_in_stock', 'bkng_price_on_request', 'bkng_product_for', '_thumbnail_id', 'bkng_product_status', 'bkng_quantity_available', 'user_phone', 'bkng_user_avatar', 'bkng_agency_working_hours', 'bkng_agency_phone', 'bkng_term_longitude', 'bkng_term_latitude', '_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('bkng_rental_interval', 'bkng_exclude_from_search', 'bws_bkng_products_images', 'bkng_term_address', 'bkng_sku', 'bkng_in_stock', 'bkng_price_on_request', 'bkng_product_for', '_thumbnail_id', 'bkng_product_status', 'bkng_quantity_available', 'user_phone', 'bkng_user_avatar', 'bkng_agency_working_hours', 'bkng_agency_phone', 'bkng_term_longitude', 'bkng_term_latitude', '_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('bkng_rental_interval', 'bkng_exclude_from_search', 'bws_bkng_products_images', 'bkng_term_address', 'bkng_sku', 'bkng_in_stock', 'bkng_price_on_request', 'bkng_product_for', '_thumbnail_id', 'bkng_product_status', 'bkng_quantity_available', 'user_phone', 'bkng_user_avatar', 'bkng_agency_working_hours', 'bkng_agency_phone', 'bkng_term_longitude', 'bkng_term_latitude', '_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bkng_rental_interval', 'bkng_exclude_from_search', 'bws_bkng_products_images', 'bkng_term_address', 'bkng_sku', 'bkng_in_stock', 'bkng_price_on_request', 'bkng_product_for', '_thumbnail_id', 'bkng_product_status', 'bkng_quantity_available', 'user_phone', 'bkng_user_avatar', 'bkng_agency_working_hours', 'bkng_agency_phone', 'bkng_term_longitude', 'bkng_term_latitude', '_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_amenity-icon-id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_amenity-icon-id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_amenity-icon-id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_amenity-icon-id';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'bkng_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'bkng_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'bkng_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bkng_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_featured_image';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_featured_image';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_featured_image';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_featured_image';

