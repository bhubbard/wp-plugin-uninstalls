#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twhl_db_version'

# Clear Cron Jobs
wp cron event delete 'healthlynked_cron'

