-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipytw_plugin_notifications', 'ipytw_settings_arr', 'ipytw_last_feed_id', 'ipytw_keeplogs', 'active_sitewide_plugins', 'ipytw_registered_feeds_arr_backup', 'ipytw_settings_arr_backup', 'ipytw_registered_feeds_arr', 'ipytw_version', 'ipytw_feed_content', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE 'ipytw_last_element_feed_%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isc%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isd%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ipytw_feed_product_id', '_ipytw_feed_id', '_ipytw_date_last_import', '_ipytw_import_feed_picture_url', '_ipytw_feed_var_id', '_ipytw_feed_category_id', '_ipytw_feed_category_parent_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ipytw_feed_product_id', '_ipytw_feed_id', '_ipytw_date_last_import', '_ipytw_import_feed_picture_url', '_ipytw_feed_var_id', '_ipytw_feed_category_id', '_ipytw_feed_category_parent_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ipytw_feed_product_id', '_ipytw_feed_id', '_ipytw_date_last_import', '_ipytw_import_feed_picture_url', '_ipytw_feed_var_id', '_ipytw_feed_category_id', '_ipytw_feed_category_parent_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ipytw_feed_product_id', '_ipytw_feed_id', '_ipytw_date_last_import', '_ipytw_import_feed_picture_url', '_ipytw_feed_var_id', '_ipytw_feed_category_id', '_ipytw_feed_category_parent_id');

