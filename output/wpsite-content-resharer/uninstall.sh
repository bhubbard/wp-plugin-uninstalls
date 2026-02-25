#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsite_twitter_reshare_settings'
wp option delete 'wpsite_twitter_reshare_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsite-twitter-reshare-meta-box-hashtags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsite-twitter-reshare-meta-box-hashtags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsite-twitter-reshare-meta-box-hashtags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsite-twitter-reshare-meta-box-hashtags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpsite_twitter_reshare_meta_box_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpsite_twitter_reshare_meta_box_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpsite_twitter_reshare_meta_box_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpsite_twitter_reshare_meta_box_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%hashtags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%hashtags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%hashtags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%hashtags'"
