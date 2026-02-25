#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wc_gateway_slickpay_settings'
wp option delete 'wc_slickpay_payment_gateways_version'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'slickpay_deposit'
wp transient delete 'slickpay_today'
wp transient delete 'slickpay_remaining'

