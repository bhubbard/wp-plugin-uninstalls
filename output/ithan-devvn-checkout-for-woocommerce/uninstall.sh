#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ithandech_woo_theme_options'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_tax_total_display'

