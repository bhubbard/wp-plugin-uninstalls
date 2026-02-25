#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mincalendar-options'
wp option delete 'mincalendar'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_MC_unit_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_MC_unit_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_MC_unit_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_MC_unit_id'"
