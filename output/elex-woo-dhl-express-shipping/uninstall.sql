-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_weight_unit', 'woocommerce_wf_dhl_shipping_settings', 'wf_dhl_insurance_enabled_checkout_no_real_time_enabled', 'wf_dhl_insurance', 'current_order_data', 'woocommerce_tax_display_cart', 'custom_services', 'wf_dhl_shipping_validation_data', 'wf_dhl_validation_error', 'dhl_activation_status');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later';
DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_composite_title_express_dhl_elex', 'user_dhl_receiver_eori', 'user_dhl_receiver_vat');
DELETE FROM wp_usermeta WHERE meta_key IN ('_composite_title_express_dhl_elex', 'user_dhl_receiver_eori', 'user_dhl_receiver_vat');
DELETE FROM wp_termmeta WHERE meta_key IN ('_composite_title_express_dhl_elex', 'user_dhl_receiver_eori', 'user_dhl_receiver_vat');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_composite_title_express_dhl_elex', 'user_dhl_receiver_eori', 'user_dhl_receiver_vat');

