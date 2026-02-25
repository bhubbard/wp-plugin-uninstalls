#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bosta_settings'
wp option delete 'bosta_initial_product_sync_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'bosta_webhook_secret'

# Delete Transients
wp transient delete 'bosta_country_id_Transient'
wp transient delete 'bosta_inventory_success'
wp transient delete 'bosta_inventory_error'
wp transient delete 'bosta_success_count'
wp transient delete 'bosta_success'
wp transient delete 'bosta_errors'
wp transient delete 'bosta_failed_orders'
wp transient delete 'deferred_order_update'
wp transient delete 'bosta_current_ranking_filter'
wp transient delete 'bosta_current_ranking_filter_legacy'
wp transient delete 'bosta_zoning'
wp transient delete 'bosta_city_areas'
wp transient delete 'bosta_timelineLength'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bosta_payment_method_update_%' OR option_name LIKE '_site_transient_bosta_payment_method_update_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_area'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bosta_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bosta_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bosta_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bosta_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bosta_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bosta_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bosta_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bosta_product_id'"
