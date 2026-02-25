#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'esfs_load_type'
wp option delete 'esfs_show_teams_list'
wp option delete 'esfs_show_performances'
wp option delete 'sportspress_link_players'
wp option delete 'esfs_show_scoring_performances_list'
wp option delete 'esfs_show_special_scoring_performances_list'
wp option delete 'esfs_show_other_performances_list'
wp option delete 'esfs_show_officials'
wp option delete 'sportspress_link_officials'
wp option delete 'esfs_show_officials_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_team'"
