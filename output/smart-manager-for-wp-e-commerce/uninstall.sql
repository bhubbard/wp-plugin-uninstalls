-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_storeapps_connector_data', 'recently_activated', 'sm_lite_activation_date', '_sm_update_418_date', 'sa_sm_offer_bfcm_2025', 'sm_inline_update_count', 'sm_dismiss_admin_notice', 'sm_beta_background_process_status', 'woocommerce_subscriptions_accept_manual_renewals', 'active_sitewide_plugins', 'sa_sm_man_hours_saved', 'sa_sm_records_updated', 'sa_sm_wsm_stock_log_imported', '_sm_update_414', '_sm_update_411', '_sm_update_415', '_sm_update_425', '_sm_update_426', '_sm_update_427', '_sm_update_442_users', '_sm_update_443_product', '_sm_update_530_shop_order', '_sm_update_5110_users', '_sm_update_5120_users', '_sm_update_5120_product', '_sm_update_5250_product', '_sm_update_5260_product', '_sm_update_600_user', '_sm_update_670_shop_order', '_sm_update_740_user', '_sm_update_813_hpos_migrate', '_sm_update_8150_user', '_sm_update_8190_product_stock_log', '_sm_update_8240_shop_coupon', '_sm_update_8250_product', '_sm_update_8260_product', '_sm_update_8340_product', '_sm_update_8360_product', '_sm_update_8390_product_stock_log', '_sm_update_8590_user', 'sm_advanced_search_query', 'sa_sm_db_version', 'sm_wp_force_collapse_admin_menu', 'sm_use_number_field_for_numeric_cols', 'sm_view_trash_records', 'sm_show_manage_with_sm_button', 'sm_show_smart_manager_menu_in_admin_bar', '_sm_beta_set_record_limit', 'sm_grid_row_height', 'sm_show_tasks_title_modal');
DELETE FROM wp_options WHERE option_name IN ('smart_manager_company_logo', 'sa_sm_attachment_columns', 'sa_sm_feedback_start_date', 'sa_sm_feedback_action_counts', 'sa_sm_feedback_close_date', 'sa_sm_dashboard_load_count', 'sa_sm_feedback_responses', '_sm_update_416_date', '_sm_update_417_date', 'sa_manager_batch_size', 'woocommerce_email_base_color', 'woocommerce_email_text_color', 'woocommerce_notify_low_stock_amount', 'sa_manager_enable_logging', 'sm_beta_background_process_params', 'update_plugins', '_sm_activation_redirect', 'sa_sm_users', 'sa_sm_product', 'sa_sm_shop_order', 'sa_sm_user', 'sa_sm_product_stock_log_tasks', 'sa_sm_shop_coupon', 'sa_sm_search_post_ids', 'sm_beta_skip_delete_dashboard_transients', 'sa_sm_shop_subscription', 'sa_sm_installing', 'sa_sm_updating');
DELETE FROM wp_options WHERE option_name LIKE 'sm_wp_dashboard_view_%';
DELETE FROM wp_options WHERE option_name LIKE 'sm_wp_dashboard_post_type_%';
DELETE FROM wp_options WHERE option_name LIKE '%_download_url';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_check_update';
DELETE FROM wp_options WHERE option_name LIKE '%_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_columns';
DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8160_%';
DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8400_%';
DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8410_%';
DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8430_%';
DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8640_%';
DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8660_%';
DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8680_%';
DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8730_%';
DELETE FROM wp_options WHERE option_name LIKE '_sm_update_8780_%';
DELETE FROM wp_options WHERE option_name LIKE '%_trash_records';
DELETE FROM wp_options WHERE option_name LIKE '%_params';
DELETE FROM wp_options WHERE option_name LIKE '%_ids';
DELETE FROM wp_options WHERE option_name LIKE '%_initial_process';
DELETE FROM wp_options WHERE option_name LIKE '%_accessible_dashboards';
DELETE FROM wp_options WHERE option_name LIKE '%_variation_ids';
DELETE FROM wp_options WHERE option_name LIKE '%_start_time';
DELETE FROM wp_options WHERE option_name LIKE '%_current_time';
DELETE FROM wp_options WHERE option_name LIKE '%_tot';
DELETE FROM wp_options WHERE option_name LIKE '%_remaining';
DELETE FROM wp_options WHERE option_name LIKE '%_last_batch_size';
DELETE FROM wp_options WHERE option_name LIKE '%_last_batch_duration';
DELETE FROM wp_options WHERE option_name LIKE '%_subscription_product_ids';
DELETE FROM wp_options WHERE option_name LIKE '%_is_background';
DELETE FROM wp_options WHERE option_name LIKE '%_feedback_done';
DELETE FROM wp_options WHERE option_name LIKE '%_feedback_start_date';
DELETE FROM wp_options WHERE option_name LIKE '%_feedback_close_date';
DELETE FROM wp_options WHERE option_name LIKE '%_feedback_action_counts';
DELETE FROM wp_options WHERE option_name LIKE '%_feedback_responses';
DELETE FROM wp_options WHERE option_name LIKE '%_search_type';
DELETE FROM wp_options WHERE option_name LIKE 'sa_sm_%';
DELETE FROM wp_options WHERE option_name LIKE '%_tasks';
DELETE FROM wp_options WHERE option_name LIKE 'wc_product_children_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sa_sm_recent_post_types', 'sa_sm_recent_dashboard_type', 'sa_sm_recent_views', 'sa_sm_recent_taxonomies', 'sa_sm_product_stock_log_tasks', 'sa_sm_shop_order', 'sa_sm_shop_subscription', '_product_attributes', '_regular_price', '_sale_price', '_thumbnail_id', '_sku', '_manage_stock', 'stock_status', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('sa_sm_recent_post_types', 'sa_sm_recent_dashboard_type', 'sa_sm_recent_views', 'sa_sm_recent_taxonomies', 'sa_sm_product_stock_log_tasks', 'sa_sm_shop_order', 'sa_sm_shop_subscription', '_product_attributes', '_regular_price', '_sale_price', '_thumbnail_id', '_sku', '_manage_stock', 'stock_status', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('sa_sm_recent_post_types', 'sa_sm_recent_dashboard_type', 'sa_sm_recent_views', 'sa_sm_recent_taxonomies', 'sa_sm_product_stock_log_tasks', 'sa_sm_shop_order', 'sa_sm_shop_subscription', '_product_attributes', '_regular_price', '_sale_price', '_thumbnail_id', '_sku', '_manage_stock', 'stock_status', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sa_sm_recent_post_types', 'sa_sm_recent_dashboard_type', 'sa_sm_recent_views', 'sa_sm_recent_taxonomies', 'sa_sm_product_stock_log_tasks', 'sa_sm_shop_order', 'sa_sm_shop_subscription', '_product_attributes', '_regular_price', '_sale_price', '_thumbnail_id', '_sku', '_manage_stock', 'stock_status', '_price');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sa_sm_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sa_sm_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sa_sm_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sa_sm_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sa_sm_recent_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sa_sm_recent_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sa_sm_recent_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sa_sm_recent_%';

