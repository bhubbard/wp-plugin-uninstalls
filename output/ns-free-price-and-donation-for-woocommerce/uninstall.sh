#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ns_gp_enabled_plugin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ns_gift_price_custom_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ns_gift_price_custom_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ns_gift_price_custom_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ns_gift_price_custom_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'price%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'price%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'price%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'price%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
