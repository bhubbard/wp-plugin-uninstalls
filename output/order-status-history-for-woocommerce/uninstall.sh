#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oshwoo_wc_colors_update'
wp option delete 'oshwoo_multicurrency_symbol'
wp option delete 'oshwoo_hx_guest'
wp option delete 'oshwoo_hx_aggregate'
wp option delete 'oshwoo_hx_pending'
wp option delete 'oshwoo_hx_processing'
wp option delete 'oshwoo_hx_onhold'
wp option delete 'oshwoo_hx_completed'
wp option delete 'oshwoo_hx_cancelled'
wp option delete 'oshwoo_hx_refunded'
wp option delete 'oshwoo_hx_failed'
wp option delete 'oshwoo_hx_other'
wp option delete 'oshwoo_hx_text'
wp option delete 'oshwoo_hx_history'
wp option delete 'woocommerce_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oshwoo_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_osh_orders_query__wp-%' OR option_name LIKE '_site_transient_osh_orders_query__wp-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oshwoo_aggregated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oshwoo_aggregated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oshwoo_aggregated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oshwoo_aggregated'"
