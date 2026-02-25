#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'lh_email_queue_single'
wp cron event delete 'lh_email_queue_initial_run'
wp cron event delete 'lh_email_queue_generate'

