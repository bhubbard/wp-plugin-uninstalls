#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_postcode_order_restriction_enabled'
wp option delete 'woocommerce_restrict_gateways_placeorder'
wp option delete 'woocommerce_postcode_order'
wp option delete 'woocommerce_allow_restrict'
wp option delete 'woocommerce_restrict_option'
wp option delete 'woocommerce_specific_allowed_gateways'
wp option delete 'woocommerce_error_gateways'
wp option delete 'woocommerce_error_placeorder'

