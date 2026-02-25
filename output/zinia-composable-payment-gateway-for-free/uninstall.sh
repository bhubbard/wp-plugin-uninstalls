#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_zinia_payment_widgets'

# Delete Transients
wp transient delete 'zinia_success_msg'
wp transient delete 'zinia_error_msg'

# Clear Cron Jobs
wp cron event delete 'zinia_daily_event'
wp cron event delete 'zinia_hourly_event'

