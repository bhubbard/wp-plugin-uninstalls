#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_oik_weight_zone_shipping_settings'
wp option delete 'woocommerce_awd_shipping_settings'
wp option delete 'woocommerce_weight_unit'

