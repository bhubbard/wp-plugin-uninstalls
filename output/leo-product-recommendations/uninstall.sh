#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_cart_redirect_after_add'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lc_lpr_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lc_lpr_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lc_lpr_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lc_lpr_data'"
