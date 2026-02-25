#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sew_wc_master'
wp option delete 'sew_en_master_for_products'
wp option delete 'sew_api_key'
wp option delete 'sew_api_secret'
wp option delete 'sew_stock_batch_size'
wp option delete 'sew_cache_clear_enabled'
wp option delete 'sew_disable_order_sync'
wp option delete 'sew_disable_refund_order_sync'
wp option delete 'sew_sync_orders_after'
wp option delete 'sew_sync_refund_orders_after'
wp option delete 'sew_unsynced_orders_refunds_days_in_past'
wp option delete 'sew_sync_user_role'
wp option delete 'sew_full_product_data_orders'
wp option delete 'sew_suppress_order_emails_eposnow_orders'
wp option delete 'sew_product_sync_disabled'
wp option delete 'sew_product_sync_draft_status_enabled'
wp option delete 'sew_product_enable_custom_fields'
wp option delete 'sew_ignore_stock_update_enabled'
wp option delete 'sew_ignore_product_update_enabled'
wp option delete 'sew_epn_title_enabled'
wp option delete 'sew_epn_description_enabled'
wp option delete 'sew_product_type_enabled'
wp option delete 'sew_unit_multiplier_enabled'
wp option delete 'sew_product_category_master_enabled'
wp option delete 'sew_epn_cost_price_enabled'
wp option delete 'sew_epn_eat_out_price_enabled'
wp option delete 'sew_epn_rrp_price_enabled'
wp option delete 'sew_epn_barcode_enabled'
wp option delete 'sew_epn_order_code_enabled'
wp option delete 'sew_epn_article_code_enabled'
wp option delete 'sew_epn_brand_id_enabled'
wp option delete 'sew_epn_supplier_id_enabled'
wp option delete 'sew_epn_tare_weight_enabled'
wp option delete 'sew_epn_size_enabled'
wp option delete 'sew_epn_sort_position_enabled'
wp option delete 'sew_epn_sell_on_till_enabled'
wp option delete 'sew_log_enabled'
wp option delete 'sew_webhook_user_id'
wp option delete 'sew_interval_for_product_update_webhook'
wp option delete 'sew_add_cors_headers'
wp option delete 'sew_api_base_url_dev'
wp option delete 'sew_log_all_api_requests'
wp option delete 'sew_development_mode'
wp option delete 'sew_valid_order_statuses'
wp option delete 'sew_product_webhook_delay'
wp option delete 'sew_cron_interval'
wp option delete 'sew_plugin_run_activation_function'
wp option delete 'sew_stock_received_at'
wp option delete 'sew_last_stock_element_processed'
wp option delete 'sew_stock_all_processed'
wp option delete 'sew_disable_staging_detection'
wp option delete 'slynk_ew_plugin_version'

# Clear Cron Jobs
wp cron event delete 'sew_cron_order_sync'
wp cron event delete 'sew_cron_setup_hourly'
wp cron event delete 'sew_cron_setup_twicedaily'
wp cron event delete 'sew_cron_setup_daily'
wp cron event delete 'sew_cron_setup_5_mins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_ignore_stock_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_ignore_stock_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_ignore_stock_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_ignore_stock_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_ignore_product_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_ignore_product_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_ignore_product_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_ignore_product_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_cost_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_cost_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_cost_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_cost_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_eat_out_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_eat_out_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_eat_out_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_eat_out_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_rrp_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_rrp_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_rrp_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_rrp_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_order_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_order_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_order_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_order_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_article_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_article_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_article_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_article_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_brand_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_brand_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_brand_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_brand_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_supplier_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_supplier_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_supplier_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_supplier_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_tare_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_tare_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_tare_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_tare_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_sort_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_sort_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_sort_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_sort_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_sell_on_till'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_sell_on_till'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_sell_on_till'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_sell_on_till'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slynk_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slynk_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slynk_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slynk_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_sale_price_measurement_scheme_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_sale_price_measurement_scheme_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_sale_price_measurement_scheme_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_sale_price_measurement_scheme_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_sale_price_measurement_unit_volume'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_sale_price_measurement_unit_volume'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_sale_price_measurement_unit_volume'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_sale_price_measurement_unit_volume'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_wc_measurement_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_wc_measurement_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_wc_measurement_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_wc_measurement_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_epn_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_epn_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_epn_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_epn_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_unit_multiplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_unit_multiplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_unit_multiplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_unit_multiplier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sln_product_category_master'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sln_product_category_master'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sln_product_category_master'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sln_product_category_master'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sew_sync_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sew_sync_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sew_sync_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sew_sync_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sew_slynk_sync_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sew_slynk_sync_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sew_slynk_sync_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sew_slynk_sync_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sew_stock_adjustment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sew_stock_adjustment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sew_stock_adjustment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sew_stock_adjustment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sew_slynk_sync_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sew_slynk_sync_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sew_slynk_sync_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sew_slynk_sync_date_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sew_epn_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sew_epn_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sew_epn_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sew_epn_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epn_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epn_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epn_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epn_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sew_product_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sew_product_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sew_product_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sew_product_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sew_stock_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sew_stock_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sew_stock_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sew_stock_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
