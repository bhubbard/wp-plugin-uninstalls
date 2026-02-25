#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vegavend_admin_notices'
wp option delete 'vegavend_store_id'
wp option delete 'vegavend_store_name'
wp option delete 'vegavend_store_email'
wp option delete 'vegavend_profile_picture'
wp option delete 'vegavend_store_banner'
wp option delete 'vegavend_company_name'
wp option delete 'vegavend_store_address_street'
wp option delete 'vegavend_store_address_street_2'
wp option delete 'vegavend_store_address_city'
wp option delete 'vegavend_store_address_postcode'
wp option delete 'vegavend_store_address_country'
wp option delete 'vegavend_company_id'
wp option delete 'vegavend_vat_number'
wp option delete 'vegavend_biography'
wp option delete 'vegavend_phone_number'
wp option delete 'vegavend_social_profiles'
wp option delete 'vegavend_shipping_methods'
wp option delete 'vegavend_warranty_policy'
wp option delete 'vegavend_payment_method'
wp option delete 'vegavend_terms_and_conditions'
wp option delete 'vegavend_refunds_policy'
wp option delete 'vegavend_shipping_policy'
wp option delete 'vegavend_store_seo_title'
wp option delete 'vegavend_store_seo_meta_description'
wp option delete 'vegavend_store_seo_keywords'
wp option delete 'vegavend_identification_verified'
wp option delete 'vegavend_address_verified'
wp option delete 'vegavend_company_id_verified'
wp option delete 'vegavend_vat_number_verified'
wp option delete 'vegavend_support_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vegavend_last_sync_time_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vegavend_%'"
wp option delete 'vegavend_company_id_number'
wp option delete 'vegavend_profile_picture_id'
wp option delete 'vegavend_store_banner_id'
wp option delete 'vegavend_profile_picture_timestamp'
wp option delete 'vegavend_store_banner_timestamp'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'vegavend_sync_setting'
wp option delete 'vegavend_sync_order_debug_recived_api'
wp option delete 'vegavend_sync_orders'
wp option delete 'vegavend_import_order_order_woo_main'
wp option delete 'vegavend_import_order_order__woo_the_end'
wp option delete 'vegavend_error_logs'
wp option delete 'vegavend_warning_logs'
wp option delete 'vegavend_info_logs'
wp option delete 'vegavend_sync_progress'
wp option delete 'vegavend_product_count'
wp option delete 'vegavend_last_sync_duration'
wp option delete 'vegavend_sync_via_cron'
wp option delete 'vegavend_last_sync_completion'
wp option delete 'vegavend_sync_circuit_breaker'
wp option delete 'vegavend_last_batch_size'
wp option delete 'vegavend_successful_syncs'
wp option delete 'vegavend_failed_syncs'
wp option delete 'vegavend_last_stalled_process'
wp option delete 'vegavend_last_abandoned_sync'
wp option delete 'vegavend_overdue_actions_sample'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'vegavend_resync_in_progress'
wp option delete 'vegavend_trigger_sync_on_next_pageload'
wp option delete 'vegavend_last_resync'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'vegavend_global_price_adjustment'
wp option delete 'vegavend_dismiss_notice_time'
wp option delete 'vegavend_api_key'
wp option delete 'vegavend_cron_sync_lock'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vegavend_account_data_%' OR option_name LIKE '_site_transient_vegavend_account_data_%'"
wp transient delete 'vegavend_bulk_editor_circuit_breaker'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vegavend_category_%' OR option_name LIKE '_site_transient_vegavend_category_%'"
wp transient delete 'vegavend_all_categories_cache'
wp transient delete 'vegavend_categories_count'
wp transient delete 'vegavend_categories_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_timestamp' OR option_name LIKE '_site_transient_%_timestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vegavend_quick_stats_%' OR option_name LIKE '_site_transient_vegavend_quick_stats_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vegavend_combined_issues_%' OR option_name LIKE '_site_transient_vegavend_combined_issues_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vegavend_issues_count_%' OR option_name LIKE '_site_transient_vegavend_issues_count_%'"
wp transient delete 'vegavend_admin_rejected_products'
wp transient delete 'vegavend_force_resync'
wp transient delete 'vegavend_sync_products_running'
wp transient delete 'vegavend_eligible_products_count'
wp transient delete 'vegavend_total_available_products'
wp transient delete 'vegavend_sync_running'
wp transient delete 'vegavend_sync_all_delay'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vegavend_quick_edit_delete_%' OR option_name LIKE '_site_transient_vegavend_quick_edit_delete_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vegavend_deleting_product_%' OR option_name LIKE '_site_transient_vegavend_deleting_product_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vegavend_syncing_product_%' OR option_name LIKE '_site_transient_vegavend_syncing_product_%'"
wp transient delete 'vegavend_last_store_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vegavend_tasks_status_%' OR option_name LIKE '_site_transient_vegavend_tasks_status_%'"
wp transient delete 'vegavend_product_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vegavend_store_check_%' OR option_name LIKE '_site_transient_vegavend_store_check_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_vegavend_store_sync_status_%' OR option_name LIKE '_site_transient_vegavend_store_sync_status_%'"

# Clear Cron Jobs
wp cron event delete 'vegavend_recalculate_sync_priorities'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vegavend_product_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vegavend_product_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vegavend_product_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vegavend_product_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_enable_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_enable_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_enable_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_enable_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_product_category_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_product_category_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_product_category_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_product_category_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_product_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_product_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_product_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_product_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_last_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_last_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_last_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_last_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_sync_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_sync_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_sync_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_sync_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_sync_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_sync_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_sync_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_sync_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_deleted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_deleted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_deleted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_deleted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vegavend_product_last_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vegavend_product_last_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vegavend_product_last_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vegavend_product_last_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_sync_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_sync_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_sync_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_sync_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_product_rejection_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_product_rejection_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_product_rejection_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_product_rejection_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_issue_in_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_issue_in_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_issue_in_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_issue_in_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issue_reasons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issue_reasons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issue_reasons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issue_reasons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_issues_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_issues_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_issues_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_issues_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_issues'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_issues'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_issues'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_issues'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_issues_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_issues_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_issues_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_issues_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_sync_error_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_sync_error_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_sync_error_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_sync_error_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_sync_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_sync_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_sync_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_sync_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_last_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_last_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_last_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_last_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vegavend_last_meaningful_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vegavend_last_meaningful_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vegavend_last_meaningful_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vegavend_last_meaningful_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
