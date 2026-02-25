#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ljapi_username'
wp option delete 'ljapi_password'
wp option delete 'ljapi_step'
wp option delete 'ljapi_total'
wp option delete 'ljapi_count'
wp option delete 'ljapi_lastsync'
wp option delete 'ljapi_sync_item_times'
wp option delete 'ljapi_imported_count'
wp option delete 'ljapi_lastsync_posts'
wp option delete 'ljapi_last_sync_count'
wp option delete 'ljapi_post_batch'
wp option delete 'ljapi_usermap'
wp option delete 'ljapi_maxid'
wp option delete 'ljapi_highest_id'
wp option delete 'ljapi_highest_comment_id'
wp option delete 'ljapi_comment_batch'
wp option delete 'ljapi_protected_password'
wp option delete 'ljapi_verified'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lj_itemid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lj_itemid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lj_itemid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lj_itemid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lj_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lj_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lj_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lj_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'lj_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'lj_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'lj_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'lj_%'"
