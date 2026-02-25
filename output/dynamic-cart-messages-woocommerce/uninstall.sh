#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dcmp-background-colors'
wp option delete 'dcmp-text-colors'
wp option delete 'dcmp-border-radius'
wp option delete 'dcmp-button-background-colors'
wp option delete 'dcmp-button-text-colors'
wp option delete 'dcmp-button-border-radius'
wp option delete 'dcmp-enable-currency-symbol'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'dcmp-threshold-inc-tax'
wp option delete 'dcmf_meta_placeholder'
wp option delete 'dcmfwc_latest_popup_sale_notice'
wp option delete 'dcmfwc_last_notice'
wp option delete 'dcmfwc_threshold_coupon_initial_setting'
wp option delete 'dcmp-threshold-text-colors'
wp option delete 'dcmp-threshold-button-background-colors'
wp option delete 'dcmp-threshold-button-text-colors'
wp option delete 'dcmp-progress-bar-toggle'
wp option delete 'dcmp-cart-pdf-btn-toggle'
wp option delete 'style_indcmf'
wp option delete 'dcmfwc_meta_style_selecetd'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_show_message_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_show_message_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_show_message_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_show_message_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_message_button_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_message_button_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_message_button_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_message_button_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_message_button_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_message_button_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_message_button_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_message_button_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_message_open_new_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_message_open_new_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_message_open_new_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_message_open_new_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_taxonomy_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_taxonomy_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_taxonomy_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_taxonomy_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_selected_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_selected_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_selected_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_selected_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_selected_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_selected_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_selected_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_selected_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_message_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_message_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_message_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_message_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_threshold_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_threshold_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_threshold_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_threshold_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_after_initial_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_after_initial_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_after_initial_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_after_initial_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_show_in_checkout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_show_in_checkout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_show_in_checkout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_show_in_checkout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_threshold_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_threshold_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_threshold_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_threshold_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_message_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_message_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_message_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_message_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_rate_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_rate_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_rate_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_rate_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_notices_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_notices_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_notices_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_notices_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp-custom-message-background-colors-gradient'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp-custom-message-background-colors-gradient'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp-custom-message-background-colors-gradient'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp-custom-message-background-colors-gradient'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_show_in_product_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_show_in_product_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_show_in_product_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_show_in_product_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_product_page_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_product_page_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_product_page_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_product_page_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmfwc_use_style_set'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmfwc_use_style_set'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmfwc_use_style_set'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmfwc_use_style_set'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp-custom-message-background-colors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp-custom-message-background-colors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp-custom-message-background-colors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp-custom-message-background-colors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp-custom-message-text-colors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp-custom-message-text-colors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp-custom-message-text-colors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp-custom-message-text-colors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp-custom-button-background-colors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp-custom-button-background-colors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp-custom-button-background-colors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp-custom-button-background-colors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp-custom-button-text-colors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp-custom-button-text-colors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp-custom-button-text-colors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp-custom-button-text-colors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_custom_message_radius'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_custom_message_radius'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_custom_message_radius'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_custom_message_radius'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dcmp_custom_button_radius'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dcmp_custom_button_radius'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dcmp_custom_button_radius'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dcmp_custom_button_radius'"
