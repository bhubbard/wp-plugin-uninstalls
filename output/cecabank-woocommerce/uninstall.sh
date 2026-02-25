#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cecabank_gateway_settings'
wp option delete 'woocommerce_force_ssl_checkout'

