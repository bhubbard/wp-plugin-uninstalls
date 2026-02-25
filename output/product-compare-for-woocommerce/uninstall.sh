#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'proco_product_compare'
wp option delete 'current_products_id'
wp option delete 'current_compare_cat_id'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_currency'

