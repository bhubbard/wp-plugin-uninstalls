#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp option delete 'wcup_promo_link'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%donated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nag'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%countdown_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%browser_locale'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_predictions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%match_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%match_predictions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%player_predictions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%group_stats'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%created_pages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%scoring'"
wp option delete 'wcup_db_version'
wp option delete 'wcup_donated'
wp option delete 'wcup_nag'
wp option delete 'wcup_show_predictions'
wp option delete 'wcup_group_stats'
wp option delete 'wcup_scoring'
wp option delete 'wcup_countdown_format'
wp option delete 'wcup_browser_locale'
wp option delete 'wcup_match_separator'
wp option delete 'wcup_match_predictions'
wp option delete 'wcup_player_predictions'

