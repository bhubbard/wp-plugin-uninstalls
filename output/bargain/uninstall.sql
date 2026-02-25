-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qcld_minimum_accept_price_enable', 'qcld_minimum_accept_product_lightbox_modal', 'qlcd_map_chatbot_admin_email', 'qlcd_map_chatbot_admin_email_subject', 'qcld_minimum_accept_price_button_text', 'qcld_minimum_accept_price_heading_text', 'qcld_minimum_accept_price_heading_text_again', 'qcld_minimum_accept_price_low_alert_text', 'qcld_minimum_accept_price_low_alert_text_two', 'qcld_minimum_accept_price_too_low_alert_text', 'qcld_minimum_accept_price_acceptable_price', 'qcld_minimum_accept_price_acceptable_copoun_code', 'qcld_minimum_accept_price_more_than_offer_price', 'qcld_minimum_accept_price_talk_to_boss', 'qcld_minimum_accept_price_get_email_address', 'qcld_minimum_accept_price_thanks_test', 'qcld_minimum_accept_price_negotiating_test', 'qcld_minimum_accept_congratulations_text', 'qcld_minimum_accept_modal_submit_button_text', 'qcld_minimum_accept_congratulations_added_to_cart_msg', 'qcld_minimum_accept_congratulations_added_to_cart', 'qcld_minimum_accept_modal_checkout_now_button_text', 'qcld_minimum_accept_modal_yes_button_text', 'qcld_minimum_accept_modal_no_button_text', 'qcld_minimum_accept_modal_or_button_text', 'qcld_minimum_accept_price_enable_variable_validation', 'qcld_minimum_accept_product_exclude', 'qcld_minimum_accept_product_discount_for_all_enable', 'qcld_minimum_accept_product_discount_price', 'qcld_minimum_accept_price_exit_intent_lang_price', 'qcld_minimum_accept_price_exit_intent_lang_msg', 'qcld_minimum_accept_price_exit_intent_lang_button', 'qlcd_wp_chatbot_email_sent', 'woocommerce_cart_redirect_after_add');
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qcld_minimum_acceptable_price_variation', 'qcld_minimum_acceptable_multi_currency_variable');
DELETE FROM wp_usermeta WHERE meta_key IN ('qcld_minimum_acceptable_price_variation', 'qcld_minimum_acceptable_multi_currency_variable');
DELETE FROM wp_termmeta WHERE meta_key IN ('qcld_minimum_acceptable_price_variation', 'qcld_minimum_acceptable_multi_currency_variable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qcld_minimum_acceptable_price_variation', 'qcld_minimum_acceptable_multi_currency_variable');

