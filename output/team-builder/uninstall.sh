#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Team_B_default_Settings'
wp option delete 'wpsm_team_p_review'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Team_B_Settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Team_B_Settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Team_B_Settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Team_B_Settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsm_team_b_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsm_team_b_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsm_team_b_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsm_team_b_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsm_team_b_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsm_team_b_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsm_team_b_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsm_team_b_count'"
