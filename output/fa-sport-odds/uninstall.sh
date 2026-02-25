#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fa-sport-odds-translation'
wp option delete 'fa-sport-odds'
wp option delete 'fa_sport_odds_cache'

# Clear Cron Jobs
wp cron event delete 'fa-sportodds-application'
wp cron event delete 'fa-sportodds-scheduled_check_application'
wp cron event delete 'scheduled_check_application'

