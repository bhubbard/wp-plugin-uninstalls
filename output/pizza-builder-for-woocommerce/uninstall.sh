#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pizza_shortcodes_data_%'"
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'pizza_settings_data'
wp option delete 'pizza_components_data'
wp option delete 'pizza_shortcodes_data'
wp option delete 'woocommerce_currency_pos'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ev_pizza_full'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ev_pizza_full'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ev_pizza_full'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ev_pizza_full'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ev_pizza'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ev_pizza'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ev_pizza'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ev_pizza'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ev_pizza_price_inc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ev_pizza_price_inc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ev_pizza_price_inc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ev_pizza_price_inc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ev_components_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ev_components_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ev_components_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ev_components_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ev_components'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ev_components'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ev_components'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ev_components'"
