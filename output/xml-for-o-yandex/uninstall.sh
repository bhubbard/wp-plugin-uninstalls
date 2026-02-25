#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xfoy_errors'
wp option delete 'xfoy_settings_arr'
wp option delete 'xfoy_version'
wp option delete 'xfoy_registered_feeds_arr'
wp option delete 'xfoy_keeplogs'
wp option delete 'xfoy_disable_notices'
wp option delete 'xfoy_enable_five_min'
wp option delete 'xfoy_feed_content'

# Clear Cron Jobs
wp cron event delete 'xfoy_cron_period'
wp cron event delete 'xfoy_cron_sborki'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xfoy_o_yandex_product_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xfoy_o_yandex_product_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xfoy_o_yandex_product_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xfoy_o_yandex_product_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xfoyp_removefromxml'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xfoyp_removefromxml'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xfoyp_removefromxml'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xfoyp_removefromxml'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xfoy_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xfoy_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xfoy_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xfoy_condition'"
