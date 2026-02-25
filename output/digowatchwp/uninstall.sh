#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'digo_watchwp_report_email'
wp option delete 'digo_watchwp_footer_link'

# Clear Cron Jobs
wp cron event delete 'digo_watchwp_my_hourly_event'

