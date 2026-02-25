#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete '_wooexp_currency'
wp option delete '_wooexp_currencies'
wp option delete '_wooexp_currencies_last_update'

# Clear Cron Jobs
wp cron event delete 'wooexp_currency_rates'

