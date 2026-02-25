#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-post-format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-handle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-default'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-did'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-use-cron'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-tags'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-comment-override'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-comment-disable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-debug-level'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-access-token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-refresh-token'"

# Clear Cron Jobs
wp cron event delete 'neznam-atproto-share_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-uri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-http-uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-http-uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-http-uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-http-uri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-should-publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-should-publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-should-publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-should-publish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-text-to-publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-text-to-publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-text-to-publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-text-to-publish'"
