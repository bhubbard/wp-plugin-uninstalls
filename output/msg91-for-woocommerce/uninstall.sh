#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'admin_mobile'
wp option delete 'msg91_woocommerce_user_info_filled'
wp option delete 'msg91_woocommerce_verify'
wp option delete 'msg91_woocommerce_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_msg91_otp_retry_%' OR option_name LIKE '_site_transient_msg91_otp_retry_%'"

# Clear Cron Jobs
wp cron event delete 'msg91_cleanup_logs'
wp cron event delete 'msg91_woocommerce_delete_error_logs_file_event'
wp cron event delete 'msg91_woocommerce_check_abandoned_carts'

