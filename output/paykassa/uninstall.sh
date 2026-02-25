#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_new_order_settings'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_force_ssl_checkout'

