#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hkd_idram_version_option'
wp option delete 'woocommerce_hk-idram-payment-gateway_settings'
wp option delete 'language_payment_idram'
wp option delete 'hkd_idram_checkout_id'
wp option delete 'hkd_check_activation_idram'

# Clear Cron Jobs
wp cron event delete 'cronCheckOrder'

