#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbp_unread_posts_debug'
wp option delete 'bbp_unread_post_image_path_unread'
wp option delete 'bbp_unread_post_image_path_read'
wp option delete 'bbp_unread_post_amount'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_last_active_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_last_active_time'"
