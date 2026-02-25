#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

