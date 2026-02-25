#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_quadpay_settings'

# Clear Cron Jobs
wp cron event delete 'quadpay_thirty_minutes_cron_jobs'
wp cron event delete 'quadpay_forty_five_minutes_cron_jobs'
wp cron event delete 'quadpay_four_times_daily_cron_jobs'
wp cron event delete 'quadpay_do_cron_jobs'

