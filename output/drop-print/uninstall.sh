#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'drop_print_settings'
wp option delete 'drop_print_files'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_drop_print_connect_token_%' OR option_name LIKE '_site_transient_drop_print_connect_token_%'"
wp transient delete 'drop_print_activation_notice'
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'drop_print_initial_user_data_sync_hook'
wp cron event delete 'drop_print_pricelist_sync_hook'
wp cron event delete 'drop_print_initial_data_sync_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'drop_print_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'drop_print_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'drop_print_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'drop_print_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_drop_print_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_drop_print_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_drop_print_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_drop_print_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_drop_print_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_drop_print_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_drop_print_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_drop_print_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_drop_print_sizing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_drop_print_sizing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_drop_print_sizing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_drop_print_sizing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_shipment_tracking_items'"
