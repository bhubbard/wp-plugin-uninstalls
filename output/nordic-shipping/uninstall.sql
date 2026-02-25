-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_shipit_uniwin_settings', 'wc_shipit_uniwin_general_settings', 'wc_shipit_uniwin_customs_settings', 'wc_shipit_uniwin_print_settings', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_phone', '_shipping_email', '_shipit_uniwin_carrier_agent_data', 'shipit_uniwin_shipping_label', 'shipit_uniwin_custom_docs', 'wc_shipit_uniwin_shipment_response_id', '_shipit_uniwin_carrier_agent_id', '_NODS_shipit_uniwin_tariff_code', '_NODS_shipit_uniwin_custom_description', '_NODS_shipit_uniwin_custom_orgin');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_phone', '_shipping_email', '_shipit_uniwin_carrier_agent_data', 'shipit_uniwin_shipping_label', 'shipit_uniwin_custom_docs', 'wc_shipit_uniwin_shipment_response_id', '_shipit_uniwin_carrier_agent_id', '_NODS_shipit_uniwin_tariff_code', '_NODS_shipit_uniwin_custom_description', '_NODS_shipit_uniwin_custom_orgin');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_phone', '_shipping_email', '_shipit_uniwin_carrier_agent_data', 'shipit_uniwin_shipping_label', 'shipit_uniwin_custom_docs', 'wc_shipit_uniwin_shipment_response_id', '_shipit_uniwin_carrier_agent_id', '_NODS_shipit_uniwin_tariff_code', '_NODS_shipit_uniwin_custom_description', '_NODS_shipit_uniwin_custom_orgin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_phone', '_shipping_email', '_shipit_uniwin_carrier_agent_data', 'shipit_uniwin_shipping_label', 'shipit_uniwin_custom_docs', 'wc_shipit_uniwin_shipment_response_id', '_shipit_uniwin_carrier_agent_id', '_NODS_shipit_uniwin_tariff_code', '_NODS_shipit_uniwin_custom_description', '_NODS_shipit_uniwin_custom_orgin');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_shipit_uniwin_shipment_response_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_shipit_uniwin_shipment_response_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_shipit_uniwin_shipment_response_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_shipit_uniwin_shipment_response_%';

