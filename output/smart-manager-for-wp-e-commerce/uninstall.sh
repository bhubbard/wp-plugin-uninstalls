#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sm_wp_dashboard_view_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sm_wp_dashboard_post_type_%'"
wp option delete '_storeapps_connector_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_download_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_check_update'"
wp option delete 'recently_activated'
wp option delete 'sm_lite_activation_date'
wp option delete '_sm_update_418_date'
wp option delete 'sa_sm_offer_bfcm_2025'
wp option delete 'sm_inline_update_count'
wp option delete 'sm_dismiss_admin_notice'
wp option delete 'sm_beta_background_process_status'
wp option delete 'woocommerce_subscriptions_accept_manual_renewals'
wp option delete 'active_sitewide_plugins'
wp option delete 'sa_sm_man_hours_saved'
wp option delete 'sa_sm_records_updated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice'"
wp option delete 'sa_sm_wsm_stock_log_imported'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_columns'"
wp option delete '_sm_update_414'
wp option delete '_sm_update_411'
wp option delete '_sm_update_415'
wp option delete '_sm_update_425'
wp option delete '_sm_update_426'
wp option delete '_sm_update_427'
wp option delete '_sm_update_442_users'
wp option delete '_sm_update_443_product'
wp option delete '_sm_update_530_shop_order'
wp option delete '_sm_update_5110_users'
wp option delete '_sm_update_5120_users'
wp option delete '_sm_update_5120_product'
wp option delete '_sm_update_5250_product'
wp option delete '_sm_update_5260_product'
wp option delete '_sm_update_600_user'
wp option delete '_sm_update_670_shop_order'
wp option delete '_sm_update_740_user'
wp option delete '_sm_update_813_hpos_migrate'
wp option delete '_sm_update_8150_user'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8160_%'"
wp option delete '_sm_update_8190_product_stock_log'
wp option delete '_sm_update_8240_shop_coupon'
wp option delete '_sm_update_8250_product'
wp option delete '_sm_update_8260_product'
wp option delete '_sm_update_8340_product'
wp option delete '_sm_update_8360_product'
wp option delete '_sm_update_8390_product_stock_log'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8400_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8410_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8430_%'"
wp option delete '_sm_update_8590_user'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8640_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8660_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8680_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8730_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8780_%'"
wp option delete 'sm_advanced_search_query'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_trash_records'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_params'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ids'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_initial_process'"
wp option delete 'sa_sm_db_version'
wp option delete 'sm_wp_force_collapse_admin_menu'
wp option delete 'sm_use_number_field_for_numeric_cols'
wp option delete 'sm_view_trash_records'
wp option delete 'sm_show_manage_with_sm_button'
wp option delete 'sm_show_smart_manager_menu_in_admin_bar'
wp option delete '_sm_beta_set_record_limit'
wp option delete 'sm_grid_row_height'
wp option delete 'sm_show_tasks_title_modal'
wp option delete 'smart_manager_company_logo'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_accessible_dashboards'"
wp option delete 'sa_sm_attachment_columns'
wp option delete 'sa_sm_feedback_start_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_variation_ids'"
wp option delete 'sa_sm_feedback_action_counts'
wp option delete 'sa_sm_feedback_close_date'
wp option delete 'sa_sm_dashboard_load_count'
wp option delete 'sa_sm_feedback_responses'
wp option delete '_sm_update_416_date'
wp option delete '_sm_update_417_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_current_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tot'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_remaining'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_batch_size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_batch_duration'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_subscription_product_ids'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_background'"
wp option delete 'sa_manager_batch_size'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_text_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedback_done'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedback_start_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedback_close_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedback_action_counts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedback_responses'"
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'sa_manager_enable_logging'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_search_type' OR option_name LIKE '_site_transient_%_search_type'"
wp transient delete 'sm_beta_background_process_params'
wp transient delete 'update_plugins'
wp transient delete '_sm_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sa_sm_%' OR option_name LIKE '_site_transient_sa_sm_%'"
wp transient delete 'sa_sm_users'
wp transient delete 'sa_sm_product'
wp transient delete 'sa_sm_shop_order'
wp transient delete 'sa_sm_user'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_tasks' OR option_name LIKE '_site_transient_%_tasks'"
wp transient delete 'sa_sm_product_stock_log_tasks'
wp transient delete 'sa_sm_shop_coupon'
wp transient delete 'sa_sm_search_post_ids'
wp transient delete 'sm_beta_skip_delete_dashboard_transients'
wp transient delete 'sa_sm_shop_subscription'
wp transient delete 'sa_sm_installing'
wp transient delete 'sa_sm_updating'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_product_children_%' OR option_name LIKE '_site_transient_wc_product_children_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sa_sm_recent_post_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sa_sm_recent_post_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sa_sm_recent_post_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sa_sm_recent_post_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sa_sm_recent_dashboard_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sa_sm_recent_dashboard_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sa_sm_recent_dashboard_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sa_sm_recent_dashboard_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sa_sm_recent_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sa_sm_recent_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sa_sm_recent_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sa_sm_recent_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sa_sm_recent_taxonomies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sa_sm_recent_taxonomies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sa_sm_recent_taxonomies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sa_sm_recent_taxonomies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sa_sm_product_stock_log_tasks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sa_sm_product_stock_log_tasks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sa_sm_product_stock_log_tasks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sa_sm_product_stock_log_tasks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'sa_sm_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'sa_sm_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'sa_sm_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sa_sm_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sa_sm_shop_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sa_sm_shop_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sa_sm_shop_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sa_sm_shop_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sa_sm_shop_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sa_sm_shop_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sa_sm_shop_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sa_sm_shop_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'sa_sm_recent_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'sa_sm_recent_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'sa_sm_recent_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sa_sm_recent_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
