#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'edd_settings'
wp option delete '_iwo_price_lowest_days'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'learn_press_%'"
wp option delete 'woocommerce_calc_taxes'
wp option delete 'tutor_option'
wp option delete 'woocommerce_enable_reviews'

