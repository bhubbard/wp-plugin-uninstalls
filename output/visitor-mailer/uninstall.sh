#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'statmailer_options'
wp option delete 'visitormailer_options'
wp option delete 'STATMAILER_VERSION_KEY'

# Clear Cron Jobs
wp cron event delete 'visitormailer_cron_hook'
wp cron event delete 'visitormailer_cron_hook($admin_email)'

