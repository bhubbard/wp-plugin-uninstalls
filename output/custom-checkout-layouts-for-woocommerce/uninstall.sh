#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'cclw_general_settings'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'cclw_advance_settings'
wp option delete 'cclw_checkout_fields'
wp option delete 'cclw_pro_version'
wp option delete 'cclw_do_activation_redirect'
wp option delete 'woocommerce_cart_block_enabled'
wp option delete 'woocommerce_checkout_block_enabled'

