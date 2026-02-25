#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_force_ssl_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_anet_temp_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_anet_temp_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_anet_temp_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_anet_temp_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_anet_temp_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_anet_temp_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_anet_temp_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_anet_temp_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_anet_pm_payerid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_anet_pm_payerid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_anet_pm_payerid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_anet_pm_payerid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_anet_pm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_anet_pm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_anet_pm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_anet_pm'"
