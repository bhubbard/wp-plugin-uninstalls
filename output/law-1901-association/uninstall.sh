#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'law1901_%'"
wp option delete 'law1901_group_name'
wp option delete 'law1901_field_first_name'
wp option delete 'law1901_field_last_name'
wp option delete 'law1901_group_register'
wp option delete 'law1901_group_administrative'
wp option delete 'law1901_field_leading_team'
wp option delete 'law1901_field_membership_limit_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_content'"
wp option delete 'law1901_addon_last_query'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
