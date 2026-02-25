#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'future_post_trigger'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'future_post_trigger'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'future_post_trigger'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'future_post_trigger'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter_published'"
