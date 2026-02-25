#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wshop_order_last_view'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wshop-ajax:service:extensions:%'"
wp option delete 'wshop_plugins_installed'
wp option delete 'page_xh_wshop_account_my_orders'
wp option delete 'wshop_addons_versions'
wp option delete 'wechat_token'
wp option delete 'xh_install_plugins'

# Clear Cron Jobs
wp cron event delete 'xunhuweb_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wshop_download_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wshop_download_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wshop_download_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wshop_download_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'link_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'link_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'link_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'link_%'"
