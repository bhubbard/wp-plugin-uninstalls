#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpla_php_error_handling'
wp option delete 'wpla_admin_menu_label'
wp option delete 'wplister_is_network_activated'
wp option delete 'wpla_updated_products_queue'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpla_dismissed_%'"
wp option delete 'wpla_feed_currency_format'
wp option delete 'wpla_default_account_id'
wp option delete 'wpla_default_lowest_price_selection'
wp option delete 'wpla_default_matcher_selection'
wp option delete 'wpla_show_browse_node_ids'
wp option delete 'wpla_job_reapply_profile_id'
wp option delete 'wpla_apply_profile_batch_size'
wp option delete 'wpla_fetch_orders_filter'
wp option delete 'wpla_log_to_db'
wp option delete 'wplister_log_record_limit'
wp option delete 'wplister_log_to_db'
wp option delete 'wpla_activation_email'
wp option delete 'wpla_api_key'
wp option delete 'wpla_cron_last_run'
wp option delete 'wpla_cron_schedule'
wp option delete 'wpla_create_orders'
wp option delete 'wpla_dedicated_orders_cron'
wp option delete 'wpla_cron_last_full_run'
wp option delete 'wpla_fba_report_schedule'
wp option delete 'wpla_fba_report_cron_last_run'
wp option delete 'wpla_daily_cron_last_run'
wp option delete 'wpla_autofetch_inventory_report'
wp option delete 'wpla_autofetch_order_report'
wp option delete 'wpla_autofetch_listing_quality_feeds'
wp option delete 'wpla_fba_enabled'
wp option delete 'wpla_pricing_asin_batch_size'
wp option delete 'wpla_pricing_batch_delay'
wp option delete 'wpla_orders_cron_last_run'
wp option delete 'wpla_feeds_in_progress'
wp option delete 'wpla_amazon_publish_queue'
wp option delete 'wpla_log_days_limit'
wp option delete 'wpla_stock_days_limit'
wp option delete 'wpla_feeds_days_limit'
wp option delete 'wpla_reports_days_limit'
wp option delete 'wpla_orders_days_limit'
wp option delete 'wpla_autosubmit_inventory_feeds'
wp option delete 'wpla_last_active_license_email'
wp option delete 'wpla_last_active_license_key'
wp option delete 'wpla_case_sensitive_sku_matching'
wp option delete 'wpla_ship_from_addresses'
wp option delete 'wpla_product_types_installed'
wp option delete 'wpla_announcements'
wp option delete 'wpla_last_announcement_check'
wp option delete 'wpla_db_version'
wp option delete 'wpla_staging_site_pattern'
wp option delete 'wpla_stock_log_backtrace'
wp option delete 'wpla_reports_in_progress'
wp option delete 'wpla_enable_product_offer_images'
wp option delete 'wpla_profile_editor_mode'
wp option delete 'wpla_variation_meta_fields'
wp option delete 'wpla_fba_enable_fallback'
wp option delete 'wpla_fba_only_mode'
wp option delete 'wpla_fba_stock_sync'
wp option delete 'wpla_fba_fulfillment_center_id'
wp option delete 'wpla_max_feed_size'
wp option delete 'wpla_repricing_shipping'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'wpla_enable_out_of_stock_threshold'
wp option delete 'wpla_keyword_fields_type'
wp option delete 'wpla_product_gallery_fallback'
wp option delete 'wpla_variation_main_image_fallback'
wp option delete 'wpla_product_gallery_first_image'
wp option delete 'wpla_variation_color_map'
wp option delete 'wpla_variation_size_map'
wp option delete 'wpla_sizemap_excluded_markets'
wp option delete 'wpla_disable_sale_price'
wp option delete 'wpla_external_repricer_mode'
wp option delete 'wpla_custom_size_map'
wp option delete 'wpla_variation_attribute_map'
wp option delete 'wpla_variation_title_mode'
wp option delete 'wpla_remove_links'
wp option delete 'wpla_allowed_html_tags'
wp option delete 'wpla_convert_content_nl2br'
wp option delete 'wpla_process_shortcodes'
wp option delete 'wpla_shortcode_do_autop'
wp option delete 'wpla_remove_https_from_images'
wp option delete 'wpla_lilo_version'
wp option delete 'wpla_feed_include_shipment_time'
wp option delete 'wpla_default_shipping_service_name'
wp option delete 'wpla_fba_default_order_comment'
wp option delete 'wpla_fba_default_delivery_sla'
wp option delete 'wpla_fba_default_notification'
wp option delete 'wpla_load_b2b_templates'
wp option delete 'wpla_instance'
wp option delete 'wpla_reports_update_woo_stock'
wp option delete 'wpla_reports_update_woo_price'
wp option delete 'wpla_reports_update_woo_condition'
wp option delete 'wpla_inventory_check_batch_size'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_products_part_1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_products'"
wp option delete 'wpla_bg_inventory_check_step'
wp option delete 'wpla_inventory_check_notification_email'
wp option delete 'wpla_inventory_check_queue_data'
wp option delete 'wpla_pricing_info_process_oos_items'
wp option delete 'wpla_pricing_info_expiry_time'
wp option delete 'wpla_price_wizard_options'
wp option delete 'wpla_conditional_order_item_updates'
wp option delete 'wpla_ignore_orders_before_ts'
wp option delete 'wpla_import_variations_as_simple'
wp option delete 'wpla_import_creates_all_variations'
wp option delete 'wpla_enable_variation_image_import'
wp option delete 'wpla_shipped_order_status'
wp option delete 'wpla_repricing_margin'
wp option delete 'wpla_repricing_use_lowest_offer'
wp option delete 'wpla_repricing_pricing_options'
wp option delete 'wpla_skugen_mode_simple'
wp option delete 'wpla_skugen_mode_variation'
wp option delete 'wpla_skugen_mode_case'
wp option delete 'wpla_update_channel'
wp option delete 'wpla_enable_missing_details_warning'
wp option delete 'wpla_feed_encoding'
wp option delete 'wpla_orders_autodetect_tax_rates'
wp option delete 'wpla_orders_tax_rate_id'
wp option delete 'wpla_orders_fixed_vat_rate'
wp option delete 'wpla_record_item_tax'
wp option delete 'wpla_orders_tax_mode'
wp option delete 'wpla_activated_key'
wp option delete 'wpla_fba_wc_shipping_options'
wp option delete 'wpla_disable_changed_order_emails'
wp option delete 'wpla_use_amazon_order_number'
wp option delete 'wpla_upload_vat_invoice'
wp option delete 'wpla_disable_new_order_emails'
wp option delete 'wpla_disable_completed_order_emails'
wp option delete 'wpla_disable_processing_order_emails'
wp option delete 'wpla_disable_on_hold_order_emails'
wp option delete 'wpla_disable_new_account_emails'
wp option delete 'wpla_allow_listing_drafts'
wp option delete 'wpla_display_product_counts'
wp option delete 'wpla_validate_sku'
wp option delete 'wpla_validate_ean'
wp option delete 'wp_wc_invoice_pdf_file_name_frontend'
wp option delete 'wpla_enable_gallery_images_import'
wp option delete 'wpla_import_store_description'
wp option delete 'wpla_disable_unit_conversion'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'wpla_import_parent_category_id'
wp option delete 'wpla_import_safe_import_mode'
wp option delete 'wpla_variation_image_to_gallery'
wp option delete 'wpla_import_attrib_as_text'
wp option delete 'wpla_import_images_basedir_name'
wp option delete 'wpla_import_images_subfolder_level'
wp option delete 'wpla_import_load_highres_eps'
wp option delete 'wpla_enable_custom_product_prices'
wp option delete 'wpla_enable_minmax_product_prices'
wp option delete 'wpla_enable_item_condition_fields'
wp option delete 'wpla_default_matched_profile'
wp option delete 'wpla_fallback_to_stock_status'
wp option delete 'wplister_default_image_size'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'wpla_variation_merger_map'
wp option delete 'wpla_feed_items_table'
wp option delete 'wpla_log_level'
wp option delete 'wpla_feed_failure_emails'
wp option delete 'wpla_fba_complete_shipped_orders'
wp option delete 'wpla_json_converted_profiles'
wp option delete 'wpla_fba_autosubmit_orders'
wp option delete 'wpla_bg_reports_in_progress'
wp option delete 'wpla_fba_override_query'
wp option delete 'wpla_enable_accounts_page'
wp option delete 'wpla_feed_background_processing'
wp option delete 'wpla_enable_repricing_page'
wp option delete 'wpla_enable_categories_page'
wp option delete 'wpla_inventory_check_frequency'
wp option delete 'wpla_skugen_duplicate_mode'
wp option delete 'wpla_enable_item_edit_link'
wp option delete 'wpla_repricing_table_show_quantity_source'
wp option delete 'wpla_enable_auto_repricing'
wp option delete 'wpla_uninstall'
wp option delete 'wpla_license_activated'
wp option delete 'wpla_ajax_error_handling'
wp option delete 'wpla_thumbs_display_size'
wp option delete 'wpla_license_email'
wp option delete 'wpla_custom_shortcodes'

# Delete Transients
wp transient delete 'wpla_admin_messages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpla_get_orders_next_token_%' OR option_name LIKE '_site_transient_wpla_get_orders_next_token_%'"
wp transient delete 'wpla_product_importer_complete'
wp transient delete 'wpla_wc_import_in_progress'
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'wc_term_counts'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wpla_update_schedule'
wp cron event delete 'wpla_fba_report_schedule'
wp cron event delete 'wpla_process_publish_queue_runner'
wp cron event delete 'wpla_daily_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_minimum_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_minimum_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_minimum_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_minimum_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_maximum_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_maximum_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_maximum_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_maximum_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_start_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_start_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_start_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_start_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_msrp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_msrp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_msrp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_msrp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_msrp_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_msrp_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_msrp_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_msrp_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpla_asin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpla_asin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpla_asin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpla_asin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpla_custom_feed_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpla_custom_feed_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpla_custom_feed_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpla_custom_feed_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpla_custom_feed_columns_old'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpla_custom_feed_columns_old'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpla_custom_feed_columns_old'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpla_custom_feed_columns_old'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpla_custom_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpla_custom_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpla_custom_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpla_custom_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpla_custom_marketplace_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpla_custom_marketplace_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpla_custom_marketplace_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpla_custom_marketplace_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_amazon_bullet_point%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_amazon_bullet_point%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_amazon_bullet_point%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_amazon_bullet_point%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_fba_overwrite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_fba_overwrite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_fba_overwrite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_fba_overwrite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpla_needs_offer_clearing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpla_needs_offer_clearing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpla_needs_offer_clearing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpla_needs_offer_clearing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpla_previous_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpla_previous_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpla_previous_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpla_previous_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_id_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_id_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_id_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_id_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_is_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_is_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_is_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_is_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_handling_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_handling_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_handling_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_handling_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_amazon_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_amazon_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_amazon_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_amazon_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_search_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_search_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_search_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_search_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazon_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazon_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazon_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazon_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpla_disabled_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpla_disabled_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpla_disabled_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpla_disabled_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_condition_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_condition_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_condition_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_condition_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_condition_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_condition_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_condition_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_condition_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_restock_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_restock_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_restock_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_restock_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_external_repricer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_external_repricer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_external_repricer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_external_repricer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_b2b_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_b2b_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_b2b_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_b2b_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_product_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_product_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_product_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_product_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_vat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_vat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_vat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_vat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpla_import_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpla_import_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpla_import_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpla_import_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_item_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_item_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_item_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_item_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_file_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_file_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_file_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_file_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_variation_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_variation_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_variation_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_variation_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_variation_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_variation_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_variation_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_variation_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_bullet_point1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_bullet_point1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_bullet_point1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_bullet_point1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_bullet_point2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_bullet_point2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_bullet_point2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_bullet_point2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_bullet_point3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_bullet_point3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_bullet_point3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_bullet_point3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_bullet_point4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_bullet_point4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_bullet_point4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_bullet_point4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_bullet_point5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_bullet_point5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_bullet_point5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_bullet_point5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_generic_keywords1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_generic_keywords1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_generic_keywords1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_generic_keywords1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_generic_keywords2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_generic_keywords2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_generic_keywords2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_generic_keywords2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_generic_keywords3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_generic_keywords3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_generic_keywords3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_generic_keywords3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_generic_keywords4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_generic_keywords4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_generic_keywords4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_generic_keywords4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_generic_keywords5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_generic_keywords5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_generic_keywords5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_generic_keywords5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variation_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variation_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variation_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variation_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_variation_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpla_custom_feed_tpl_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpla_custom_feed_tpl_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpla_custom_feed_tpl_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpla_custom_feed_tpl_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_upc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_upc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_upc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_upc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_ean'"
