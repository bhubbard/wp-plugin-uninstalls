#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_wf_dhl_shipping_settings'
wp option delete 'wf_dhl_insurance_enabled_checkout_no_real_time_enabled'
wp option delete 'wf_dhl_insurance'
wp option delete 'current_order_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'custom_services'
wp option delete 'wf_dhl_shipping_validation_data'
wp option delete 'wf_dhl_validation_error'
wp option delete 'dhl_activation_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_composite_title_express_dhl_elex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_composite_title_express_dhl_elex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_composite_title_express_dhl_elex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_composite_title_express_dhl_elex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_dhl_receiver_eori'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_dhl_receiver_eori'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_dhl_receiver_eori'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_dhl_receiver_eori'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_dhl_receiver_vat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_dhl_receiver_vat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_dhl_receiver_vat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_dhl_receiver_vat'"
