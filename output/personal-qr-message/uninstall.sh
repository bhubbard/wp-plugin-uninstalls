#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'media_cron'
wp cron event delete 'upload_cron'
wp cron event delete 'email_cron'

