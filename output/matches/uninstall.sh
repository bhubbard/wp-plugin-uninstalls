#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'matches_upcoming_list_number'
wp option delete 'matches_team_name'
wp option delete 'matches_team_location'
wp option delete 'matches_team_logo'
wp option delete 'matches_date_format'
wp option delete 'matches_custom_date_format'
wp option delete 'matches_date_localize'
wp option delete 'matches_date_timezone'
wp option delete 'matches_db_version'

