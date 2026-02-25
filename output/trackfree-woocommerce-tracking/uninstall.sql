-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trackfree_shipment_status_in_orders', 'trackfree_account_api_key', 'trackfree_account_verify', 'trackfree_tracking_domain', 'trackfree_preferred_couriers', 'trackfree_hide_quick_start_info', 'trackfree_is_custom_track_url', 'trackfree_internal_email_link', 'trackfree_auto_order_status_update', 'trackfree_track_page_id', 'trackfree_display_options', 'trackfree_trans_strings', 'trackfree_date_time_formats', 'trackfree_shipment_details_in_order_details', 'trackfree_show_intransit_badge', 'trackfree_translate_strings', 'trackfree_additional_texts', 'trackfree_custom_css_and_html', 'trackfree_option_name', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_default_country', 'woocommerce_store_postcode', 'woocommerce_currency', 'trackfree_shipment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_trackfree_shipment_details');
DELETE FROM wp_usermeta WHERE meta_key IN ('_trackfree_shipment_details');
DELETE FROM wp_termmeta WHERE meta_key IN ('_trackfree_shipment_details');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_trackfree_shipment_details');

