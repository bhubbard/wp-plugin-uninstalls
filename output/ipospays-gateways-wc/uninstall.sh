#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ipospays_settings'
wp option delete 'woocommerce_ipospays_gpay_settings'
wp option delete 'woocommerce_ipospays_apple_pay_settings'
wp option delete 'ipospays_settings'
wp option delete 'ipospays_plugin_version'
wp option delete 'ipospay_token_split_done'
wp option delete 'ipospays_payment_token_id'

# Delete Transients
wp transient delete 'ipospays_version_sent'

