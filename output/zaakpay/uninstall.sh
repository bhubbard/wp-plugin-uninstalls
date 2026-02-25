#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_zpay_settings'

# Delete Transients
wp transient delete 'ced-zaakpay-activation-notice'

# Clear Cron Jobs
wp cron event delete 'ced_zaakpay_refund_updates'
wp cron event delete 'ced_zaakpay_transaction_updates'

