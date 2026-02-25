#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bank_bni_accounts'
wp option delete 'woocommerce_bank_bri_accounts'
wp option delete 'woocommerce_bank_mandiri_accounts'
wp option delete 'woocommerce_paymentcode_enabled'

