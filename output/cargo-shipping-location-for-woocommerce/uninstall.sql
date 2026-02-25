-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cslfw_cargo_api_key', 'cslfw_box_info_email', 'from_street', 'from_street_name', 'from_city', 'phonenumber_from', 'shipping_cargo_express', 'shipping_cargo_box', 'cargo_box_style', 'cslfw_auto_shipment_create', 'cslfw_shipping_methods', 'cslfw_shipping_methods_all', 'cslfw_products_in_label', 'cslfw_complete_orders', 'cslfw_webhooks_installed', 'shipping_cargo_express_24', 'shipping_pickup_code', 'cslfw_debug_mode', 'cslfw_cod_check', 'cslfw_fulfill_all', 'cslfw_bulk_actions', 'cslfw_queued_bulk_labels', 'website_name_cargo', 'cargo_order_status', 'cslfw_google_api_key', 'bootstrap_enalble', 'cslfw_map_size', 'cslfw_custom_map_size', 'disable_order_status', 'mailchimp_auto_subscribe', 'cslfw_print_label', 'cslfw_bulk_shipment_print', 'cslfw_bulk_shipment_print_process', 'cslfw_bulk_shipment_process', 'bulk_shipment_create', 'bulk_shipment_print', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cargo_shipping_id', 'cslfw_shipping', 'get_status_cargo', 'get_status_cargo_text', 'cargo_DistributionPointID', 'cargo_DistributionPointName', 'cargo_StreetName', 'cargo_StreetNum', 'cargo_cargoPhone', 'cargo_Comment', 'cargoPhone', 'cargo_Latitude', 'cargo_Longitude', 'lineNumber', 'drivername', 'customerCode');
DELETE FROM wp_usermeta WHERE meta_key IN ('cargo_shipping_id', 'cslfw_shipping', 'get_status_cargo', 'get_status_cargo_text', 'cargo_DistributionPointID', 'cargo_DistributionPointName', 'cargo_StreetName', 'cargo_StreetNum', 'cargo_cargoPhone', 'cargo_Comment', 'cargoPhone', 'cargo_Latitude', 'cargo_Longitude', 'lineNumber', 'drivername', 'customerCode');
DELETE FROM wp_termmeta WHERE meta_key IN ('cargo_shipping_id', 'cslfw_shipping', 'get_status_cargo', 'get_status_cargo_text', 'cargo_DistributionPointID', 'cargo_DistributionPointName', 'cargo_StreetName', 'cargo_StreetNum', 'cargo_cargoPhone', 'cargo_Comment', 'cargoPhone', 'cargo_Latitude', 'cargo_Longitude', 'lineNumber', 'drivername', 'customerCode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cargo_shipping_id', 'cslfw_shipping', 'get_status_cargo', 'get_status_cargo_text', 'cargo_DistributionPointID', 'cargo_DistributionPointName', 'cargo_StreetName', 'cargo_StreetNum', 'cargo_cargoPhone', 'cargo_Comment', 'cargoPhone', 'cargo_Latitude', 'cargo_Longitude', 'lineNumber', 'drivername', 'customerCode');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'drivername%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'drivername%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'drivername%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'drivername%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'lineNumber%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'lineNumber%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'lineNumber%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'lineNumber%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'customerCode%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'customerCode%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'customerCode%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'customerCode%';

