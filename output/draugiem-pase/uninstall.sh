#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'draugiem_config'

# Clear Cron Jobs
wp cron event delete 'draugiem_cron'

