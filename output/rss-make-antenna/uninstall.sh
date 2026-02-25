#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'my_rss_patrol'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'img-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'img-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'img-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'img-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
