-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aftership_option_name', 'automizely_aftership_plugin_actived', 'aftership_api_enabled', 'aftership_prices_include_tax', 'aftership_weight_unit', 'aftership_dimension_unit', 'aftership_force_ssl_checkout', 'woocommerce_weight_unit', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wc-aftership-plugin%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_customer_note', '_aftership_tracking_items', '_aftership_tracking_number', '_aftership_tracking_provider_name', '_aftership_migrated', '_aftership_tracking_account', '_aftership_tracking_key', '_aftership_tracking_postal', '_aftership_tracking_shipdate', '_aftership_tracking_destination_country', 'aftership_wp_api_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_customer_note', '_aftership_tracking_items', '_aftership_tracking_number', '_aftership_tracking_provider_name', '_aftership_migrated', '_aftership_tracking_account', '_aftership_tracking_key', '_aftership_tracking_postal', '_aftership_tracking_shipdate', '_aftership_tracking_destination_country', 'aftership_wp_api_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_customer_note', '_aftership_tracking_items', '_aftership_tracking_number', '_aftership_tracking_provider_name', '_aftership_migrated', '_aftership_tracking_account', '_aftership_tracking_key', '_aftership_tracking_postal', '_aftership_tracking_shipdate', '_aftership_tracking_destination_country', 'aftership_wp_api_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_customer_note', '_aftership_tracking_items', '_aftership_tracking_number', '_aftership_tracking_provider_name', '_aftership_migrated', '_aftership_tracking_account', '_aftership_tracking_key', '_aftership_tracking_postal', '_aftership_tracking_shipdate', '_aftership_tracking_destination_country', 'aftership_wp_api_key');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

