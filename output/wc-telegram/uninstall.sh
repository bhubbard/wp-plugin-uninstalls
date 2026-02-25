#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_tax_total_display'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_telegram_billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_telegram_billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_telegram_billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_telegram_billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_telegram_shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_telegram_shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_telegram_shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_telegram_shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_telegram_ship_to_different_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_telegram_ship_to_different_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_telegram_ship_to_different_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_telegram_ship_to_different_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_telegram_chat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_telegram_chat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_telegram_chat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_telegram_chat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_telegram_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_telegram_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_telegram_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_telegram_message'"
