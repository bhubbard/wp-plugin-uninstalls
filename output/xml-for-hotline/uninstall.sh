#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xfhu_keeplogs'
wp option delete 'xfhu_errors'
wp option delete 'xfhu_settings_arr'
wp option delete 'xfhu_registered_feeds_arr'
wp option delete 'xfhu_version'
wp option delete 'xfhu_disable_notices'
wp option delete 'xfhu_enable_five_min'
wp option delete 'active_sitewide_plugins'
wp option delete 'xfhu_feed_content'

# Clear Cron Jobs
wp cron event delete 'xfhu_cron_period'
wp cron event delete 'xfhu_cron_sborki'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xfhup_removefromxml'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xfhup_removefromxml'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xfhup_removefromxml'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xfhup_removefromxml'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xfhu_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xfhu_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xfhu_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xfhu_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xfhu_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xfhu_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xfhu_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xfhu_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'deny_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'deny_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'deny_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'deny_%'"
