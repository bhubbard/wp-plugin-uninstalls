#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'icl_enable_multi_currency'
wp option delete 'woocommerce_price_num_decimals'

