#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redirection_reporting'

# Clear Cron Jobs
wp cron event delete 'redirection_reporting_archive_data'

