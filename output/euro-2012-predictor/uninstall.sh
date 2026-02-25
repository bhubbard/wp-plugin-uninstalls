#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%donated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%nag'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_predictions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%promo_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%countdown_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%browser_locale'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%group_stats'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%scoring'"
wp option delete 'euro2012_db_version'
wp option delete 'euro2012_promo_link'
wp option delete 'euro2012_group_stats'
wp option delete 'euro2012_scoring'
wp option delete 'euro2012_countdown_format'
wp option delete 'euro2012_browser_locale'

