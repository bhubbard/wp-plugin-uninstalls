#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'divit_cron_jobs'

