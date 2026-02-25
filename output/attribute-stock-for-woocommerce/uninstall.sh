#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_notify_no_stock'
wp option delete 'woocommerce_notify_low_stock'
wp option delete 'woocommerce_stock_email_recipient'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_skip_optimize_tables'"
wp option delete 'mewz_wcas_product_multipliers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mewz_wcas_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_envato_unlisted'"
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_stock_format'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'envato_market_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mewz_wcas_multiplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mewz_wcas_multiplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mewz_wcas_multiplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mewz_wcas_multiplier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mewz_wcas_multiplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mewz_wcas_multiplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mewz_wcas_multiplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mewz_wcas_multiplier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mewz_wcas_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mewz_wcas_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mewz_wcas_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mewz_wcas_exclude'"
