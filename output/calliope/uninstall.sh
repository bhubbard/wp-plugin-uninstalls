#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'calliope_installed'

# Clear Cron Jobs
wp cron event delete 'calliope_cron_scheduler'

