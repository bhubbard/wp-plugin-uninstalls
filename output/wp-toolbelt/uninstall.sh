#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'toolbelt_options'
wp option delete 'toolbelt_settings'
wp option delete 'disallowed_keys'

# Clear Cron Jobs
wp cron event delete 'toolbelt_cron_daily'
wp cron event delete 'toolbelt_cron_weekly'

