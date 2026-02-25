#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'omega_add_paypal_tracking'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_api_enabled'

