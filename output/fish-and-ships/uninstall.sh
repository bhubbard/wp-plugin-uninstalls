#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fish-and-ships-woocommerce'
wp option delete 'fish-and-ships-woocommerce-user-default'
wp option delete 'fish-and-ships-woocommerce-news'
wp option delete 'woocommerce_currency'
wp option delete 'wc-fns-translatable'
wp option delete 'wc_fns_logs_index'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'group_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'group_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'group_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'group_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'field_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'field_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'field_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'field_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fish-and-ships-woocommerce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fish-and-ships-woocommerce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fish-and-ships-woocommerce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fish-and-ships-woocommerce'"
