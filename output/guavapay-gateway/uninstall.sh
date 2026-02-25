#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_guavapay_settings'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_total_display'

