#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '__user_setting_access'

# Clear Cron Jobs
wp cron event delete 'category_sync_event'
wp cron event delete 'process_order_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rvx_comment_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rvx_comment_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rvx_comment_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rvx_comment_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rvx_comment_order_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rvx_comment_order_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rvx_comment_order_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rvx_comment_order_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_recommended'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_recommended'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_recommended'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_recommended'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reviewx_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reviewx_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reviewx_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reviewx_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rvx_review_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rvx_review_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rvx_review_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rvx_review_version'"
