#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmeetupactivity_groups'
wp option delete 'wpmeetupactivity_prefs'
wp option delete 'wpmeetupactivity_fb_options'
wp option delete 'wpmeetupactivity_events_title'
wp option delete 'wpmeetupactivity_events_desc'
wp option delete 'wpmeetupactivity_apikey'
wp option delete 'wpmeetupactivity_db_version'
wp option delete 'wpmeetupactivity_title'

# Clear Cron Jobs

