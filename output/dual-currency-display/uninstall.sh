#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_currency'
wp option delete 'dual_currency_enable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dual_currency_table_exists_%'"
wp option delete 'dual_currency_bgn_eur_rate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_bgn_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_bgn_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_bgn_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_bgn_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_bgn_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_bgn_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_bgn_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_bgn_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_eur_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_eur_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_eur_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_eur_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_eur_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_eur_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_eur_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_eur_sale_price'"
