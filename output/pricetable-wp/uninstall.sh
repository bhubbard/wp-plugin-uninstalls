#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'siteorigin_pricetable_wp_welcome'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nk_price_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nk_price_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nk_price_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nk_price_table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pricetable_wp_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pricetable_wp_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pricetable_wp_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pricetable_wp_setting'"
