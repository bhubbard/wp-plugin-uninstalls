#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc-oca-%'"
wp option delete 'wc-oca_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-notices' OR option_name LIKE '_site_transient_%-notices'"

# Clear Cron Jobs
wp cron event delete 'oca_retry_failed_orders'
wp cron event delete 'wc_oca_test_orders_manager'

