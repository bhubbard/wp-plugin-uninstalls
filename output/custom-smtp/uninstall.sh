#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_smtp_options'
wp option delete 'custom_smtp_version'

# Clear Cron Jobs
wp cron event delete 'custom_smtp_purge_logs'

