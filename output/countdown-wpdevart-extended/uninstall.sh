#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpda_countdown_extended_params'
wp option delete 'wpdevart_countdown_extended_popup_enable'
wp option delete 'wpdevart_countdown_extended_product_postiton'
wp option delete 'wpdevart_countdown_extended_shop_position'
wp option delete 'woocommerce_enable_timer_in_all_prod'
wp option delete 'wpdevart_countdown_woocommerce_all_timer'
wp option delete 'wpdevart_countdown_woocommerce_all_theme'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpda_countdown_extended_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpda_countdown_extended_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpda_countdown_extended_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpda_countdown_extended_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpda_countdown_extended_timer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpda_countdown_extended_timer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpda_countdown_extended_timer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpda_countdown_extended_timer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpda_countdown_extended_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpda_countdown_extended_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpda_countdown_extended_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpda_countdown_extended_theme'"
