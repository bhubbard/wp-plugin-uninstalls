#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gale_hsa_fsa_ts_sync_progress'
wp option delete 'gale_hsa_fsa_ts_total_products'
wp option delete 'woocommerce_gale_checkout_settings'
wp option delete 'gale_hsa_fsa_ts_products_synced'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gale_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gale_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gale_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gale_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gale_eligibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gale_eligibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gale_eligibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gale_eligibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_currency_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_currency_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_currency_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_currency_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_currency_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_currency_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_currency_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_currency_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_short_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_short_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_short_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_short_description'"
