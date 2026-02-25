-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_smartshipping_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_smartshipping_api_data', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_warehouse', '_packing_mode', '_is_stackable', '_adult_signature', '_select', '_is_dangerous', '_select-package', 'sm_city_id', 'sm_state_id', 'sm_country_id', 'sm_postalCode', 'sm_shipper_from', '_po_box', 'sm_street', 'sm_customerid', 'sm_email', 'sm_phone', 'Dispatch_created', 'Tracking_Number', 'Smartt_BL_Number', 'Bol_Path', 'Carrier_Name', 'PickUp_Number', 'Tracking_Url', 'current_shipping_price', 'ShipmentGuid', 'shipping_date', 'ShipmentId', 'sm_city', 'sm_state', 'sm_country', 'sm_default_address', '_select-mcountry', '_select-mstate');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_warehouse', '_packing_mode', '_is_stackable', '_adult_signature', '_select', '_is_dangerous', '_select-package', 'sm_city_id', 'sm_state_id', 'sm_country_id', 'sm_postalCode', 'sm_shipper_from', '_po_box', 'sm_street', 'sm_customerid', 'sm_email', 'sm_phone', 'Dispatch_created', 'Tracking_Number', 'Smartt_BL_Number', 'Bol_Path', 'Carrier_Name', 'PickUp_Number', 'Tracking_Url', 'current_shipping_price', 'ShipmentGuid', 'shipping_date', 'ShipmentId', 'sm_city', 'sm_state', 'sm_country', 'sm_default_address', '_select-mcountry', '_select-mstate');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_warehouse', '_packing_mode', '_is_stackable', '_adult_signature', '_select', '_is_dangerous', '_select-package', 'sm_city_id', 'sm_state_id', 'sm_country_id', 'sm_postalCode', 'sm_shipper_from', '_po_box', 'sm_street', 'sm_customerid', 'sm_email', 'sm_phone', 'Dispatch_created', 'Tracking_Number', 'Smartt_BL_Number', 'Bol_Path', 'Carrier_Name', 'PickUp_Number', 'Tracking_Url', 'current_shipping_price', 'ShipmentGuid', 'shipping_date', 'ShipmentId', 'sm_city', 'sm_state', 'sm_country', 'sm_default_address', '_select-mcountry', '_select-mstate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_warehouse', '_packing_mode', '_is_stackable', '_adult_signature', '_select', '_is_dangerous', '_select-package', 'sm_city_id', 'sm_state_id', 'sm_country_id', 'sm_postalCode', 'sm_shipper_from', '_po_box', 'sm_street', 'sm_customerid', 'sm_email', 'sm_phone', 'Dispatch_created', 'Tracking_Number', 'Smartt_BL_Number', 'Bol_Path', 'Carrier_Name', 'PickUp_Number', 'Tracking_Url', 'current_shipping_price', 'ShipmentGuid', 'shipping_date', 'ShipmentId', 'sm_city', 'sm_state', 'sm_country', 'sm_default_address', '_select-mcountry', '_select-mstate');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'Dispatch_created_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'Dispatch_created_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'Dispatch_created_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'Dispatch_created_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'Tracking_Number_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'Tracking_Number_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'Tracking_Number_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'Tracking_Number_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'Smartt_BL_Number_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'Smartt_BL_Number_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'Smartt_BL_Number_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'Smartt_BL_Number_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'Bol_Path_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'Bol_Path_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'Bol_Path_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'Bol_Path_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'Carrier_Name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'Carrier_Name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'Carrier_Name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'Carrier_Name_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'PickUp_Number_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'PickUp_Number_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'PickUp_Number_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'PickUp_Number_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'Tracking_Url_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'Tracking_Url_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'Tracking_Url_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'Tracking_Url_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'current_shipping_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'current_shipping_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'current_shipping_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'current_shipping_price_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ShipmentGuid_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ShipmentGuid_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ShipmentGuid_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ShipmentGuid_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_date_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_date_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_date_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_date_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ShipmentId_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ShipmentId_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ShipmentId_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ShipmentId_%';

