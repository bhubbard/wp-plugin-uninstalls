-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gupfw_plugin_notifications', 'gupfw_settings_arr', 'gupfw_keeplogs', 'active_sitewide_plugins', 'gupfw_registered_feeds_arr', 'gupfw_last_feed_id', 'gupfw_version', 'gupfw_feed_content', 'gupfw_hook_name_for_gift_info', 'gupfw_hook_name_for_gift_in_category_info');
DELETE FROM wp_options WHERE option_name LIKE 'gupfw_last_element_feed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gupfw_product_gift_ids', '_days_of_the_week', '_days_of_the_hours', '_gupfw_stopgift', '_two_price_one');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gupfw_product_gift_ids', '_days_of_the_week', '_days_of_the_hours', '_gupfw_stopgift', '_two_price_one');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gupfw_product_gift_ids', '_days_of_the_week', '_days_of_the_hours', '_gupfw_stopgift', '_two_price_one');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gupfw_product_gift_ids', '_days_of_the_week', '_days_of_the_hours', '_gupfw_stopgift', '_two_price_one');

