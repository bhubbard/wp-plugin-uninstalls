#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_purchased'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_donated'"
wp option delete 'te_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-notice-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'origin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'origin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'origin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'origin'"
