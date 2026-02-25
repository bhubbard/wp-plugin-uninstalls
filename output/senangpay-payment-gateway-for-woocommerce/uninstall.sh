#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_senangpay_gateway_settings'
wp option delete 'woocommerce_force_ssl_checkout'

