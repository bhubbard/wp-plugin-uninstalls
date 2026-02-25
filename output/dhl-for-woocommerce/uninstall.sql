-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency_pos', 'woocommerce_weight_unit', 'woocommerce_pr_dhl_handover', '_pr_dhl_bulk_action_confirmation', 'woocommerce_pr_dhl_paket_settings', 'woocommerce_pr_dhl_ecomm_settings', 'wc_pip_link_color', '_dhl_auth_token_rest');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pr_shipment_dhl_label_tracking', '_pr_shipment_dhl_label_items', '_dhl_manufacture_country', '_dhl_hs_code', '_dhl_export_description', '_dhl_dangerous_goods', '_dhl_no_same_day_transfer');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pr_shipment_dhl_label_tracking', '_pr_shipment_dhl_label_items', '_dhl_manufacture_country', '_dhl_hs_code', '_dhl_export_description', '_dhl_dangerous_goods', '_dhl_no_same_day_transfer');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pr_shipment_dhl_label_tracking', '_pr_shipment_dhl_label_items', '_dhl_manufacture_country', '_dhl_hs_code', '_dhl_export_description', '_dhl_dangerous_goods', '_dhl_no_same_day_transfer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pr_shipment_dhl_label_tracking', '_pr_shipment_dhl_label_items', '_dhl_manufacture_country', '_dhl_hs_code', '_dhl_export_description', '_dhl_dangerous_goods', '_dhl_no_same_day_transfer');

