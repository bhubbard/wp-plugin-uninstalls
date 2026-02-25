#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%test_user'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%test_user_retry'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%convertion_rate'"
wp option delete 'woocommerce_default_gateway'
wp option delete 'kmercadopagogpl_ignore_review'
wp option delete 'kmercadopagogpl_installed_date'

# Clear Cron Jobs
wp cron event delete 'do_kmercadopagogpl_hourly_check'

