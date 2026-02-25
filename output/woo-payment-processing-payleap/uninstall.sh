#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_currency'

