#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quotes_for_wc'
wp option delete 'qwc_menu_notice'
wp option delete 'qwc_add_to_cart_button_text'
wp option delete 'qwc_enable_global_quote'
wp option delete 'qwc_enable_global_prices'
wp option delete 'qwc_proceed_checkout_btn_label'
wp option delete 'qwc_cart_page_name'
wp option delete 'qwc_checkout_page_name'
wp option delete 'qwc_hide_address_fields'
wp option delete 'woocommerce_quotes-gateway_settings'
wp option delete 'qwc_place_order_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracker_last_send'"
wp option delete 'qwc_allow_tracking'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'active_sitewide_plugins'
wp option delete 'qwc_tracker_last_send'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qwc_display_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qwc_display_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qwc_display_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qwc_display_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qwc_enable_quotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qwc_enable_quotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qwc_enable_quotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qwc_enable_quotes'"
