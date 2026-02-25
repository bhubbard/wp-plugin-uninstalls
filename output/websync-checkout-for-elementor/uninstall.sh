#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'websync_checkout_version'
wp option delete 'websync_checkout_activated_at'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_total_display'

