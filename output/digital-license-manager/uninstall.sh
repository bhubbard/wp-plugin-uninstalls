#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dlm_tools'
wp option delete 'dlm_needs_permalinks_flush'
wp option delete 'time_formt'
wp option delete 'nc_info_dlm_lmfwc'
wp option delete 'dlm_settings_general'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dlm_settings_%'"
wp option delete 'dlm_lmfw_migration_generator_map'
wp option delete 'dlm_db_version'
wp option delete 'lmfwc_settings_general'
wp option delete 'lmfwc_settings_order_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dlm_database_migration_%'"
wp option delete 'dlm_database_migration_lmfw'

# Delete Transients
wp transient delete 'dlm_consumer_key'
wp transient delete 'dlm_api_key'
wp transient delete 'dlm_permalinks_needs_flush'
wp transient delete 'dlm_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dlm_notice_%' OR option_name LIKE '_site_transient_dlm_notice_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lmfwc_licensed_product_delivered_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lmfwc_licensed_product_delivered_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lmfwc_licensed_product_delivered_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lmfwc_licensed_product_delivered_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lmfwc_licensed_product_use_generator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lmfwc_licensed_product_use_generator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lmfwc_licensed_product_use_generator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lmfwc_licensed_product_use_generator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lmfwc_licensed_product_assigned_generator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lmfwc_licensed_product_assigned_generator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lmfwc_licensed_product_assigned_generator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lmfwc_licensed_product_assigned_generator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlm_licensed_product_use_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlm_licensed_product_use_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlm_licensed_product_use_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlm_licensed_product_use_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlm_licensed_product_use_generator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlm_licensed_product_use_generator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlm_licensed_product_use_generator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlm_licensed_product_use_generator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlm_licensed_product_assigned_generator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlm_licensed_product_assigned_generator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlm_licensed_product_assigned_generator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlm_licensed_product_assigned_generator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlm_licensed_product_licenses_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlm_licensed_product_licenses_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlm_licensed_product_licenses_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlm_licensed_product_licenses_source'"
