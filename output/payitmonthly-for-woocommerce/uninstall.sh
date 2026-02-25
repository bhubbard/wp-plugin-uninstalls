#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_pim_settings'
wp option delete '_pim_integration_oauth_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pim_wc_product_option_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pim_wc_product_option_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pim_wc_product_option_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pim_wc_product_option_select'"
