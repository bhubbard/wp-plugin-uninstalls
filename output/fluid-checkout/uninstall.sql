-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fc_load_unminified_assets', 'woocommerce_gzdp_checkout_enable', 'fc_plugin_activation_time', 'awdp_disable_discount', 'awdp_fee_label', 'woocommerce_dintero_checkout_settings', 'elementor_woocommerce_purchase_summary_page_id', 'woocommerce_eh_paypal_express_settings', 'generate_menu_plus_settings', 'vp_woo_pont_custom_button_label', 'kt_woo_extras', 'woocommerce_payplus-payment-gateway_settings', 'seur_2shop_custom_name_field', 'seur_classic_int_2shop_custom_name_field', 'szbd_precise_address', 'szbd_map_placement', 'woocommerce_gzdp_enable_vat_check', 'woocommerce_sf_add_company_billing_fields_id', 'woocommerce_sf_add_company_billing_fields_vat', 'woocommerce_sf_add_company_billing_fields_tax', 'generate_settings', 'alt_bg_color', 'section_divide_color', 'secondary_accent_color', 'secondary_accent_alt_color', 'body_color', 'accent_color', 'sf_neighborhood_options', 'woocommerce_securesubmit_settings', 'fc_debug_mode');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_time';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%_show_db_update_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sm_tooltip_type', 'sm_estimation_delivery', 'billing_phone', 'phone_verified', 'mfn-post-custom-layout', 'mfn-post-sticky-header', '_suki_page_settings', 'suki_page_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('sm_tooltip_type', 'sm_estimation_delivery', 'billing_phone', 'phone_verified', 'mfn-post-custom-layout', 'mfn-post-sticky-header', '_suki_page_settings', 'suki_page_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('sm_tooltip_type', 'sm_estimation_delivery', 'billing_phone', 'phone_verified', 'mfn-post-custom-layout', 'mfn-post-sticky-header', '_suki_page_settings', 'suki_page_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sm_tooltip_type', 'sm_estimation_delivery', 'billing_phone', 'phone_verified', 'mfn-post-custom-layout', 'mfn-post-sticky-header', '_suki_page_settings', 'suki_page_settings');

