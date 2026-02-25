#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hugeprofit_api_token'
wp option delete 'hugeprofit_sync_in_progress'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hugeprofit_background_token_%'"
wp option delete 'hugeprofit_crm_url'
wp option delete 'hugeprofit_background_token_import'
wp option delete 'hugeprofit_background_token_export'
wp option delete 'hugeprofit_server_error'
wp option delete 'hugeprofit_integration_id'
wp option delete 'hugeprofit_cron_check'
wp option delete 'hugeprofit_cron_check_time'
wp option delete 'hugeprofit_force_alternative_method'
wp option delete 'hugeprofit_user_token'
wp option delete 'hugeprofit_user_id'
wp option delete 'hugeprofit_ident'
wp option delete 'hugeprofit_auto_sync'

# Delete Transients
wp transient delete 'hugeprofit_reference_info'

# Clear Cron Jobs
wp cron event delete 'hugeprofit_export_products_batch'
wp cron event delete 'hugeprofit_import_products_batch'
wp cron event delete 'hugeprofit_auto_sync_products'
wp cron event delete 'hugeprofit_update_crm_url'
wp cron event delete 'hugeprofit_sync_single_product'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hugeprofit_cost_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hugeprofit_cost_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hugeprofit_cost_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hugeprofit_cost_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hugeprofit_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hugeprofit_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hugeprofit_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hugeprofit_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hugeprofit_synthetic_parent_for_hp_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hugeprofit_synthetic_parent_for_hp_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hugeprofit_synthetic_parent_for_hp_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hugeprofit_synthetic_parent_for_hp_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hugeprofit_test_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hugeprofit_test_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hugeprofit_test_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hugeprofit_test_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hugeprofit_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hugeprofit_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hugeprofit_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hugeprofit_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hugeprofit_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hugeprofit_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hugeprofit_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hugeprofit_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hugeprofit_sync_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hugeprofit_sync_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hugeprofit_sync_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hugeprofit_sync_lock'"
