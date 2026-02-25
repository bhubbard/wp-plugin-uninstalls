#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wip_woocarousel_settings'
wp option delete 'woocommerce_shop_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wip_woocarousel-lite_dismissed_notice_usrid%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wip_woocarousel-lite_dismissed_notice_usrid%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wip_woocarousel-lite_dismissed_notice_usrid%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wip_woocarousel-lite_dismissed_notice_usrid%'"
