#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_calc_taxes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'asrfwoo_shipping_groups_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_condition_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_condition_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_condition_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_condition_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_operator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_operator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_operator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_operator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_group_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_group_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_group_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_group_conditions'"
