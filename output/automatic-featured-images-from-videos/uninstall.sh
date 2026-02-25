#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'wds_bulk_process_video_query_init'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_embed_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_embed_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_embed_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_embed_url'"
