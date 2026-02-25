#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'genealogy'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_family_member_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_family_member_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_family_member_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_family_member_data'"
