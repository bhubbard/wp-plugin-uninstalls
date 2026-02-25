#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lhr_version'

# Clear Cron Jobs
wp cron event delete 'lhr_cleanup_cron'

