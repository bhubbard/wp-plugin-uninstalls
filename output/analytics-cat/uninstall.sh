#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fca_ga'
wp option delete 'fca_ga_show_review_notice'
wp option delete 'fca_ga_show_ga4_notice'

# Clear Cron Jobs
wp cron event delete 'fca_ga_schedule_review_notice'
wp cron event delete 'fca_ga_schedule_ga4_notice'

