#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atomx_settings_orders'
wp option delete 'atomx_settings_subs'
wp option delete 'atomx_settings_special_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_atomx_order_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_atomx_order_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_atomx_order_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_atomx_order_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_atomx_subs_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_atomx_subs_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_atomx_subs_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_atomx_subs_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
