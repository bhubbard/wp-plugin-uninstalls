#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptripadvisor_tripadvisor_settings'
wp option delete 'wptripadvisor_hidden_reviews'
wp option delete 'wptripadvisor_options'
wp option delete 'wpfbr_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Clear Cron Jobs
wp cron event delete 'wptripadvisor_daily_event'

