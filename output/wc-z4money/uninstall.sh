#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'IS_Z4Money_URL'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_wc_z4money_creditcard_settings'
wp option delete 'woocommerce_wc_z4money_boleto_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_z4money_boleto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_z4money_boleto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_z4money_boleto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_z4money_boleto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_z4money_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_z4money_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_z4money_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_z4money_card'"
