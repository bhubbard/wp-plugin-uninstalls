#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'sksoftware_speedy_for_woocommerce_is_authenticated'
wp option delete 'sksoftware_speedy_for_woocommerce_client_contracts'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_calc_taxes'

