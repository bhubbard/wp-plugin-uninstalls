#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nmr_strava_settings'
wp option delete 'nmr_strava_activities_db_version'

