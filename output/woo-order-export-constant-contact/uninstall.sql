-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_wps_constant_contact_woo_list_id', 'wc_wps_constant_contact_woo_order_status', 'wps_cc_woo_log', 'wc_wps_constant_contact_woo_access_token', 'wc_wps_constant_contact_woo_api_key', 'wps_woo_order_expo_to_cc', 'wps_woo_order_expo_to_cc_ver');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('constant_contact_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('constant_contact_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('constant_contact_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('constant_contact_id');

