#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_nova_poshta_shipping_method_settings'
wp option delete 'woocommerce_enable_shipping_calc'

