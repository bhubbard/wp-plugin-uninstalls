#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sportspress_event_teams_delimiter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_format'"
