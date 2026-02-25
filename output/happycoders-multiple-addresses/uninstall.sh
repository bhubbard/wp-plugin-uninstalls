#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hc_wcma_checkout_selector_style'
wp option delete 'hc_wcma_checkout_allow_new_address'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_addresses'"
wp option delete 'hc_wcma_limit_max_billing_addresses'
wp option delete 'hc_wcma_limit_max_shipping_addresses'
wp option delete 'hc_wcma_checkout_saved_address_display'
wp option delete 'hc_wcma_my_account_menu_item_text'
wp option delete 'hc_wcma_my_account_address_display_style'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'woocommerce_checkout_company_field'
wp option delete 'woocommerce_checkout_address_2_field'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hc_wcma_selected_billing_address_snapshot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hc_wcma_selected_billing_address_snapshot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hc_wcma_selected_billing_address_snapshot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hc_wcma_selected_billing_address_snapshot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hc_wcma_selected_shipping_address_snapshot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hc_wcma_selected_shipping_address_snapshot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hc_wcma_selected_shipping_address_snapshot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hc_wcma_selected_shipping_address_snapshot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hc_wcma_billing_addresses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hc_wcma_billing_addresses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hc_wcma_billing_addresses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hc_wcma_billing_addresses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hc_wcma_shipping_addresses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hc_wcma_shipping_addresses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hc_wcma_shipping_addresses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hc_wcma_shipping_addresses'"
