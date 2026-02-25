#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vs_options'

# Clear Cron Jobs
wp cron event delete 'vs_cron'

