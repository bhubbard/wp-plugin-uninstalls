-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'request_a_quote_form_setting', 'request_a_quote_quotelist_settings', 'woocommerce_currency_pos', 'elex_variation_attributes', 'elex_composite_data', 'woocommerce_myaccount_page_id', 'save_hide_cart_new_fields', 'request_a_quote_general_settings', 'woocommerce_enable_ajax_add_to_cart', 'request_a_quote_template_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later';
DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again';

