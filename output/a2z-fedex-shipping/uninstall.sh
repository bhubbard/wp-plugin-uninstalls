#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shipi_migration_done'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_feature_product_block_editor_enabled'
wp option delete 'hitshippo_fedex_main_settings'
wp option delete 'hit_multi_vendor'
wp option delete 'hitshipo_fedex_working_status'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hitshippo_fedex_ex_rate%'"

# Delete Transients
wp transient delete 'hitshipo_fedex_express_nonce_temp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hitshipo_fedex_rest_auth_token_%' OR option_name LIKE '_site_transient_hitshipo_fedex_rest_auth_token_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fedex_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fedex_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fedex_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fedex_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_fedex_cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_fedex_cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_fedex_cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_fedex_cc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_fedex_label_dec'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_fedex_label_dec'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_fedex_label_dec'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_fedex_label_dec'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hitshippo_fedex_vendor_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hitshippo_fedex_vendor_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hitshippo_fedex_vendor_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hitshippo_fedex_vendor_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipi_custom_val_rates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipi_custom_val_rates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipi_custom_val_rates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipi_custom_val_rates'"
