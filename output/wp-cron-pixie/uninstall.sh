#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'cron_pixie_passed_event'
wp cron event delete 'cron_pixie_future_event'
wp cron event delete 'cron_pixie_single_event'

