#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_gutenberg_blocks'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_server_side'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options_field'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_woocommerce_options_field'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_server_showpopups'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_tinymce'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_v2_script_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_stale_cart_map'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wc_actions_forms'"
wp option delete 'woocommerce_currency'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
