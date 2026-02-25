#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_favepay_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_favepay_order_payment_url_%' OR option_name LIKE '_site_transient_wc_favepay_order_payment_url_%'"

# Clear Cron Jobs
wp cron event delete 'wc_favepay_check_transaction_status'

