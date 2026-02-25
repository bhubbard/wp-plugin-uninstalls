-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vtpos_inv_setting', '_vt_ac', 'woocommerce_dimension_unit', 'apbd_nmca_ccss', 'woocommerce_currency_pos', 'active_sitewide_plugins', 'health-check-allowed-plugins');
DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_city', 'billing_state', 'billing_phone', 'billing_address_1', 'billing_country', 'billing_postcode', 'designation', 'outlet_id', 'added_by', 'force_pw_change', '_vt_is_canceled', '_vt_stp_trans_id', '_vt_stock_cal', '_vt_stock_reverse', '_is_vitepos', '_vtp_payment_list', '_vt_is_paid', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_city', 'billing_state', 'billing_phone', 'billing_address_1', 'billing_country', 'billing_postcode', 'designation', 'outlet_id', 'added_by', 'force_pw_change', '_vt_is_canceled', '_vt_stp_trans_id', '_vt_stock_cal', '_vt_stock_reverse', '_is_vitepos', '_vtp_payment_list', '_vt_is_paid', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_city', 'billing_state', 'billing_phone', 'billing_address_1', 'billing_country', 'billing_postcode', 'designation', 'outlet_id', 'added_by', 'force_pw_change', '_vt_is_canceled', '_vt_stp_trans_id', '_vt_stock_cal', '_vt_stock_reverse', '_is_vitepos', '_vtp_payment_list', '_vt_is_paid', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_city', 'billing_state', 'billing_phone', 'billing_address_1', 'billing_country', 'billing_postcode', 'designation', 'outlet_id', 'added_by', 'force_pw_change', '_vt_is_canceled', '_vt_stp_trans_id', '_vt_stock_cal', '_vt_stock_reverse', '_is_vitepos', '_vtp_payment_list', '_vt_is_paid', '_wp_attachment_image_alt');

