#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%'"
wp option delete 'qcld_minimum_accept_price_enable'
wp option delete 'qcld_minimum_accept_product_lightbox_modal'
wp option delete 'qlcd_map_chatbot_admin_email'
wp option delete 'qlcd_map_chatbot_admin_email_subject'
wp option delete 'qcld_minimum_accept_price_button_text'
wp option delete 'qcld_minimum_accept_price_heading_text'
wp option delete 'qcld_minimum_accept_price_heading_text_again'
wp option delete 'qcld_minimum_accept_price_low_alert_text'
wp option delete 'qcld_minimum_accept_price_low_alert_text_two'
wp option delete 'qcld_minimum_accept_price_too_low_alert_text'
wp option delete 'qcld_minimum_accept_price_acceptable_price'
wp option delete 'qcld_minimum_accept_price_acceptable_copoun_code'
wp option delete 'qcld_minimum_accept_price_more_than_offer_price'
wp option delete 'qcld_minimum_accept_price_talk_to_boss'
wp option delete 'qcld_minimum_accept_price_get_email_address'
wp option delete 'qcld_minimum_accept_price_thanks_test'
wp option delete 'qcld_minimum_accept_price_negotiating_test'
wp option delete 'qcld_minimum_accept_congratulations_text'
wp option delete 'qcld_minimum_accept_modal_submit_button_text'
wp option delete 'qcld_minimum_accept_congratulations_added_to_cart_msg'
wp option delete 'qcld_minimum_accept_congratulations_added_to_cart'
wp option delete 'qcld_minimum_accept_modal_checkout_now_button_text'
wp option delete 'qcld_minimum_accept_modal_yes_button_text'
wp option delete 'qcld_minimum_accept_modal_no_button_text'
wp option delete 'qcld_minimum_accept_modal_or_button_text'
wp option delete 'qcld_minimum_accept_price_enable_variable_validation'
wp option delete 'qcld_minimum_accept_product_exclude'
wp option delete 'qcld_minimum_accept_product_discount_for_all_enable'
wp option delete 'qcld_minimum_accept_product_discount_price'
wp option delete 'qcld_minimum_accept_price_exit_intent_lang_price'
wp option delete 'qcld_minimum_accept_price_exit_intent_lang_msg'
wp option delete 'qcld_minimum_accept_price_exit_intent_lang_button'
wp option delete 'qlcd_wp_chatbot_email_sent'
wp option delete 'woocommerce_cart_redirect_after_add'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qcld_minimum_acceptable_price_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qcld_minimum_acceptable_price_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qcld_minimum_acceptable_price_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qcld_minimum_acceptable_price_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qcld_minimum_acceptable_multi_currency_variable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qcld_minimum_acceptable_multi_currency_variable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qcld_minimum_acceptable_multi_currency_variable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qcld_minimum_acceptable_multi_currency_variable'"
