#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bankpay_plus_settings'
wp option delete 'bankpay_plus_analytics_version'
wp option delete 'bankpay_plus_setup_notice_dismissed'
wp option delete 'bankpay_plus_wizard_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'bankpay_plus_webhook_queue'
wp option delete 'woocommerce_mock_bankpay_settings'

# Clear Cron Jobs
wp cron event delete 'bankpay_plus_process_webhook_queue'
wp cron event delete 'bankpay_plus_cleanup_old_data'

