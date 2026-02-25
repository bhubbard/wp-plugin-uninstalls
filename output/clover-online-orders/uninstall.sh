#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moo_settings'
wp option delete 'moo_apple_pay_enabled'
wp option delete 'moo_old_checkout_enabled'
wp option delete 'moo_merchant_pubkey'
wp option delete 'moo_pakms_key'
wp option delete 'moo_slug'
wp option delete 'moo_merchant_uuid'
wp option delete 'moo_onlineOrders_version'
wp option delete 'soo_ssl_verify'
wp option delete 'sooDisableGoogleReCAPTCHA'
wp option delete 'moo_next_order_number'
wp option delete 'moo-show-allItems'
wp option delete 'moo_new_checkout_enabled'

# Delete Transients
wp transient delete 'moo_blackout'
wp transient delete 'soo_error_saving_settings'

