#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%lang_en'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_last_seen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_last_seen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_last_seen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_last_seen'"
