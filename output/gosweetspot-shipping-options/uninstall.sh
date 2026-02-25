#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'

