#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_coinremitterpayments_settings'
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_currency_pos'

# Delete Transients
wp transient delete 'currency_value'

# Clear Cron Jobs
wp cron event delete 'update_fiat_rate_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_crypto_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_crypto_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_crypto_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_crypto_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_crypto_coin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_crypto_coin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_crypto_coin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_crypto_coin'"
