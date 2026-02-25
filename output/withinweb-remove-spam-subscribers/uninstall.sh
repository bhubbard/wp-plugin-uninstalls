#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'withinweb_wwrs_cron_array'

# Clear Cron Jobs
wp cron event delete 'withinweb_wwrs_cron_hook'

