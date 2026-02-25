#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_cyberpress_trying_to_add_archive_page'
wp option delete 'cyberpress_archive_pages'
wp option delete 'cyberpress_general'
wp option delete 'carbon_custom_sidebars'

# Delete Transients
wp transient delete 'cyberpress_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cyberpress_match_tournament'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cyberpress_match_tournament'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cyberpress_match_tournament'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cyberpress_match_tournament'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cyberpress_team_game'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cyberpress_team_game'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cyberpress_team_game'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cyberpress_team_game'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
