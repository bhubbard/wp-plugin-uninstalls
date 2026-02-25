#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'witalk_shipping_cost'
wp option delete 'witalk_shipping_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'italkereso_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'italkereso_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'italkereso_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'italkereso_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'italk_prod_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'italk_prod_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'italk_prod_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'italk_prod_name'"
