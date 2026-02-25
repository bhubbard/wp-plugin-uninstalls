#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'criczumo_away_team_color'
wp option delete 'criczumo_home_team_color'
wp option delete 'criczumo_live_team_color'
wp option delete 'criczumo_ended_team_color'
wp option delete 'criczumo_upcoming_team_color'
wp option delete 'live_team_color'

