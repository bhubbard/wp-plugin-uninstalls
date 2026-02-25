#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'embedly_settings'

# Clear Cron Jobs
wp cron event delete 'embedly_revalidate_account'

