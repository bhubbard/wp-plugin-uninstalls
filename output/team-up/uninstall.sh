#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_team_up_accent_color'
wp option delete '_team_up_page_slug'
wp option delete '_team_up_page_title'
wp option delete '_team_up_force_genesis_full_width'
wp option delete '_team_up_hide_department'
wp option delete '_team_up_square_theme'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_team_up_break_after'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_team_up_break_after'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_team_up_break_after'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_team_up_break_after'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_team_up_member_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_team_up_member_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_team_up_member_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_team_up_member_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_team-up_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_team-up_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_team-up_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_team-up_per_page'"
