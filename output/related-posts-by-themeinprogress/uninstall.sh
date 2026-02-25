#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tiprp_settings'
wp option delete 'woocommerce_shop_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tiprp_dismissed_notice_userid_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tiprp_dismissed_notice_userid_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tiprp_dismissed_notice_userid_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tiprp_dismissed_notice_userid_%'"
