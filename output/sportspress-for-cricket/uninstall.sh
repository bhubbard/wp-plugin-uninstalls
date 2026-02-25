#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'
wp option delete 'sportspress_event_show_players'
wp option delete 'sportspress_event_show_player_numbers'
wp option delete 'sportspress_event_performance_mode'
wp option delete 'sportspress_event_logos_results_delimiter'
wp option delete 'sportspress_event_logos_reverse_results_format'
wp option delete 'sportspress_event_show_score_status'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_team'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_team'"
