#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'payracacr_custom_cron_transactions'
wp cron event delete 'payracacr_custom_cron_news'

