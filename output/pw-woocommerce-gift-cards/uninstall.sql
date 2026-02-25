-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pwgc_hide_paypal_ipn_pdt_bug_notice', 'hide_pimwick_menu', 'pw_gift_card_designs_free', 'woocommerce_email_text_color', 'woocommerce_email_body_background_color', 'pwgc_blocks_hide_redeem_form', 'pwgc_before_add_to_cart_quantity_theme_fix', 'pwgc_format_prices', 'pwgc_use_wc_transactional_emails', 'pwgc_send_when_processing', 'pwgc_before_add_to_cart_currency_conversion_fix', 'pwgc_autocomplete_gift_card_orders', 'woocommerce_currency', 'pwgc_allow_gift_card_purchasing', 'pwgc_database_version', 'woocommerce_paypal_settings', 'pwgc_hide_partner_message', 'woocommerce_email_background_color', 'woocommerce_email_base_color', 'pwgc_redeem_cart_location', 'pwgc_redeem_checkout_location', 'woocommerce_email_footer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('card_number', 'amount', '_regular_price', 'wmc_order_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('card_number', 'amount', '_regular_price', 'wmc_order_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('card_number', 'amount', '_regular_price', 'wmc_order_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('card_number', 'amount', '_regular_price', 'wmc_order_info');

