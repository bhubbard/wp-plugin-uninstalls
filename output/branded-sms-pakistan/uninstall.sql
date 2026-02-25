-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bsp_optin', '1.0', 'wcj_order_number_prefix', 'bsp_gateway_credentials_front_page_options', 'bsp_order_verification_front_page_options', 'bsp_messages_text_front_page_options', 'bsp_support_front_page_options', 'fx-admin-notice-test', 'fx-admin-notice-example');
DELETE FROM wp_options WHERE option_name LIKE '%_setting';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dvs_courier_tracking');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dvs_courier_tracking');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dvs_courier_tracking');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dvs_courier_tracking');

