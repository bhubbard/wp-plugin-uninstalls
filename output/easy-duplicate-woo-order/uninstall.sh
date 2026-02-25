#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wizbee_duplicate_order_add_order_menu'
wp option delete 'wizbee_duplicate_order_add_order_topbar'
wp option delete 'wizbee_duplicate_order_copy_old_price'
wp option delete 'wizbee_duplicate_order_copy_fees'
wp option delete 'wizbee_duplicate_order_copy_shipping'
wp option delete 'wizbee_duplicate_order_apply_coupons'
wp option delete 'wizbee_duplicate_order_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_edwo_notice_dismissed_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_edwo_notice_dismissed_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_edwo_notice_dismissed_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_edwo_notice_dismissed_version'"
