#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_predictions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%promo_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%countdown_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%browser_locale'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%adjust_knockout'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%match_predictions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_predictions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nag'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%group_stats'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%scoring'"
wp option delete 'fp_adjust_knockout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%match_separator'"
wp option delete 'fp_db_version'
wp option delete 'fp_promo_link'
wp option delete 'fp_group_stats'
wp option delete 'fp_scoring'
wp option delete 'fp_countdown_format'
wp option delete 'fp_browser_locale'

