#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_version'
wp option delete 'glassboxx_wc_apibaseurl'
wp option delete 'glassboxx_wc_active'
wp option delete 'glassboxx_ty_msg'
wp option delete 'glassboxx_wc_id'
wp option delete 'glassboxx_wc_debug'
wp option delete 'woo_multi_currency_params'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gbx_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gbx_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gbx_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gbx_sent'"
