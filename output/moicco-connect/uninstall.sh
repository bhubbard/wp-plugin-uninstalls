#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moicco_token_info'

# Clear Cron Jobs
wp cron event delete 'moicco_cronjob'

