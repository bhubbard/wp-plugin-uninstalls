#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_anyone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_anyone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_anyone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_anyone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_password'"
