#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'weibo2wp_%'"
wp option delete 'weibo2wp_default_setting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_weibo2wp_session_expires_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_weibo2wp_session_%'"
wp option delete 'weibo2wp_auth_list'

# Clear Cron Jobs
wp cron event delete 'weibo2wp_synch_dailly_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weibo_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weibo_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weibo_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weibo_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_image_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_image_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_image_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_image_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weibo_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weibo_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weibo_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weibo_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weibo_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weibo_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weibo_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weibo_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_comment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_comment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_comment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_comment_id'"
