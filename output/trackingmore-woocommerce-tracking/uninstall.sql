-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trackingmore_option_name', 'trackingmore_api_enabled', 'trackingmore_prices_include_tax', 'trackingmore_weight_unit', 'trackingmore_dimension_unit', 'trackingmore_force_ssl_checkout', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_trackingmore_tracking_provider', '_trackingmore_tracking_number', '_trackingmore_tracking_shipdate', '_trackingmore_tracking_postal', '_trackingmore_tracking_account', '_trackingmore_tracking_key', '_trackingmore_tracking_destination_country', '_trackingmore_tracking_origin_country', '_tracking_number', '_wc_shipment_tracking_items', 'is_customer_note', '_trackingmore_tracking_provider_name', 'trackingmore_wp_api_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_trackingmore_tracking_provider', '_trackingmore_tracking_number', '_trackingmore_tracking_shipdate', '_trackingmore_tracking_postal', '_trackingmore_tracking_account', '_trackingmore_tracking_key', '_trackingmore_tracking_destination_country', '_trackingmore_tracking_origin_country', '_tracking_number', '_wc_shipment_tracking_items', 'is_customer_note', '_trackingmore_tracking_provider_name', 'trackingmore_wp_api_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_trackingmore_tracking_provider', '_trackingmore_tracking_number', '_trackingmore_tracking_shipdate', '_trackingmore_tracking_postal', '_trackingmore_tracking_account', '_trackingmore_tracking_key', '_trackingmore_tracking_destination_country', '_trackingmore_tracking_origin_country', '_tracking_number', '_wc_shipment_tracking_items', 'is_customer_note', '_trackingmore_tracking_provider_name', 'trackingmore_wp_api_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_trackingmore_tracking_provider', '_trackingmore_tracking_number', '_trackingmore_tracking_shipdate', '_trackingmore_tracking_postal', '_trackingmore_tracking_account', '_trackingmore_tracking_key', '_trackingmore_tracking_destination_country', '_trackingmore_tracking_origin_country', '_tracking_number', '_wc_shipment_tracking_items', 'is_customer_note', '_trackingmore_tracking_provider_name', 'trackingmore_wp_api_key');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

