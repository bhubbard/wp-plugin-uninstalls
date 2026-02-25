#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom-worldpay_settings'
wp option delete 'woocommerce_force_ssl_checkout'

