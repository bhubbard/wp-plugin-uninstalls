#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'corona_all'
wp option delete 'corona_countries'
wp option delete 'corona_history'
wp option delete 'corona_last_updated'

# Clear Cron Jobs
wp cron event delete 'corona_jobs'

