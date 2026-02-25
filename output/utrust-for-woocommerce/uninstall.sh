#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_utrust_gateway_settings'
wp option delete 'woocommerce_force_ssl_checkout'

