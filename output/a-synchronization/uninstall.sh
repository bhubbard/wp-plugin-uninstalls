#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wechat_article_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wechat_article_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wechat_article_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wechat_article_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ximalaya_track_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ximalaya_track_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ximalaya_track_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ximalaya_track_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ximalaya_sync_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ximalaya_sync_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ximalaya_sync_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ximalaya_sync_log'"
