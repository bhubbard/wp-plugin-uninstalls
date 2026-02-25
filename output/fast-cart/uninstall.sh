#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fast_cart_option'
wp option delete 'fast_cart_option_styling'
wp option delete 'fast_cart_license'
wp option delete 'fast_cart_upgrade_completed'
wp option delete 'woocommerce_tax_total_display'

