#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ActivatedTime'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Styling'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Online'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Pestered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ValidKey'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
