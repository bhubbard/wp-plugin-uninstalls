#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'surge_installed'

# Clear Cron Jobs
wp cron event delete 'surge_delete_expired'

