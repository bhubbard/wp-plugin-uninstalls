#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scoreboardui_matches_link'
wp option delete 'scoreboardui_title'
wp option delete 'scoreboardui_url'
wp option delete 'scoreboardui_des'
wp option delete 'scoreboardui_link'
wp option delete 'scoreboardui_teams_link'
wp option delete 'scoreboardui_plugin_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'teams_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'teams_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'teams_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'teams_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'teams_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'teams_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'teams_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'teams_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_status_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_status_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_status_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_status_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_watchLink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_watchLink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_watchLink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_watchLink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_ranking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_ranking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_ranking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_ranking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_other_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_other_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_other_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_other_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_other_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_other_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_other_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_other_link'"
