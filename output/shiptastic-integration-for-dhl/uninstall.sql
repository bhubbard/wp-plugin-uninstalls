-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_pr_dhl_paket_settings', 'woocommerc_stc_dhl_import_finished', 'woocommerce_shiptastic_shipper_address_country', 'woocommerce_shiptastic_return_address_country', '_wcdpi_settings_general', 'woocommerce_stc_internetmarke_import_finished', '_wcdpi_settings_portokasse', '_wcdpi_settings_internetmarke_1c4a', 'woocommerce_shiptastic_dhl_version', 'woocommerce_stc_dhl_enable_legacy_soap', 'woocommerce_bacs_accounts', 'woocommerce_shiptastic_dhl_enable_legacy_soap', 'woocommerce_checkout_address_2_field', '_wc_stc_dhl_im_products_refresh_error', '_wc_stc_dhl_im_page_formats_refresh_error', 'wc_stc_dhl_portokasse_balance', 'wc_stc_dhl_im_current_page_formats', 'woocommerce_stc_dhl_paket_api_access_token', 'wc_stc_dhl_im_products_expire');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pr_shipment_dhl_label_tracking', 'shipping_dhl_postnumber', 'shipping_parcelshop_post_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pr_shipment_dhl_label_tracking', 'shipping_dhl_postnumber', 'shipping_parcelshop_post_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pr_shipment_dhl_label_tracking', 'shipping_dhl_postnumber', 'shipping_parcelshop_post_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pr_shipment_dhl_label_tracking', 'shipping_dhl_postnumber', 'shipping_parcelshop_post_number');

