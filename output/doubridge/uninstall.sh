#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'doubridge_api'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_currency'
wp option delete 'product_cat_children'

