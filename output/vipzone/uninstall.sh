#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'devtree_vipzone_hide_shop_for_guests'
wp option delete 'woocommerce_currency_pos'
wp option delete 'devtree_vipzone_delete_data_on_uninstall'
wp option delete 'DEVTREE_VIPZONE_PLUGIN_VERSION'

# Clear Cron Jobs
wp cron event delete 'devtree_vipzone_verify_license_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_devtree_vipzone_hide_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_devtree_vipzone_hide_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_devtree_vipzone_hide_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_devtree_vipzone_hide_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_devtree_vipzone_blur_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_devtree_vipzone_blur_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_devtree_vipzone_blur_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_devtree_vipzone_blur_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_devtree_vipzone_hide_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_devtree_vipzone_hide_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_devtree_vipzone_hide_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_devtree_vipzone_hide_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_devtree_vipzone_hide_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_devtree_vipzone_hide_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_devtree_vipzone_hide_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_devtree_vipzone_hide_price'"
