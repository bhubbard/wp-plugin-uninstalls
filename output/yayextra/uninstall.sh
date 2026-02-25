#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yaye_settings'
wp option delete 'yaye_stock_flag'
wp option delete 'woocommerce_calc_taxes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaye_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaye_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaye_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaye_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaye_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaye_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaye_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaye_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaye_actions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaye_actions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaye_actions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaye_actions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaye_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaye_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaye_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaye_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaye_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaye_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaye_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaye_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaye_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaye_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaye_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaye_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaye_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaye_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaye_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaye_custom_css'"
