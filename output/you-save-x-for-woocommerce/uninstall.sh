#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thp_ysxfw_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thp_ysxfw_order_detail_yousaved_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thp_ysxfw_order_detail_yousaved_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thp_ysxfw_order_detail_yousaved_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thp_ysxfw_order_detail_yousaved_amount'"
