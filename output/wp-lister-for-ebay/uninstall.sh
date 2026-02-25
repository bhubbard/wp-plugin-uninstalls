#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplister_ebay_sessionid'
wp option delete 'wplister_log_to_db'
wp option delete 'wplister_setup_next_step'
wp option delete 'wplister_ebay_token'
wp option delete 'wplister_ignore_orders_before_ts'
wp option delete 'wplister_ebay_token_expirationtime'
wp option delete 'wplister_enable_messages_page'
wp option delete 'wplister_ebay_seller_shipping_profiles'
wp option delete 'wplister_ebay_seller_payment_profiles'
wp option delete 'wplister_ebay_seller_return_profiles'
wp option delete 'wplister_ebay_seller_profiles_enabled'
wp option delete 'wplister_ebay_seller_profiles'
wp option delete 'wplister_ebay_token_userid'
wp option delete 'wplister_ebay_user'
wp option delete 'wplister_ebay_token_is_invalid'
wp option delete 'wplister_default_account_id'
wp option delete 'wplister_eps_xfer_mode'
wp option delete 'wplister_default_feedback_text'
wp option delete 'wplister_updated_products_queue'
wp option delete 'wplister_variation_meta_fields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wple_dismissed_%'"
wp option delete 'wple_job_reapply_profile_id'
wp option delete 'wple_job_reapply_template_id'
wp option delete 'wplister_ebay_site_id'
wp option delete 'wplister_revise_all_listings_limit'
wp option delete 'wplister_apply_profile_batch_size'
wp option delete 'wple_default_matcher_selection'
wp option delete 'wple_skip_gnu_tls_compatibility_error'
wp option delete 'wplister_gallery_items_limit'
wp option delete 'wplister_inventory_check_batch_size'
wp option delete 'wplister_run_background_inventory_check'
wp option delete 'wple_inventory_check_notification_email'
wp option delete 'wplister_php_error_handling'
wp option delete 'wplister_staging_site_pattern'
wp option delete 'wplister_cron_last_run'
wp option delete 'wple_daily_cron_last_run'
wp option delete 'wplister_cron_auctions'
wp option delete 'wplister_log_days_limit'
wp option delete 'wplister_orders_days_limit'
wp option delete 'wplister_archive_days_limit'
wp option delete 'wple_inventory_check_frequency'
wp option delete 'wplister_log_include_authinfo'
wp option delete 'wplister_log_record_limit'
wp option delete 'wple_last_active_license_email'
wp option delete 'wple_activation_email'
wp option delete 'wple_last_active_license_key'
wp option delete 'wple_api_key'
wp option delete 'wplister_background_revisions'
wp option delete 'wplister_template_ssl_mode'
wp option delete 'wplister_enable_out_of_stock_threshold'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'wplister_auto_archive_listings'
wp option delete 'wplister_license_error'
wp option delete 'wplister_last_product_update_results'
wp option delete 'wplister_local_timezone'
wp option delete 'wplister_admin_menu_label'
wp option delete 'wplister_is_network_activated'
wp option delete 'wplister_enable_accounts_page'
wp option delete 'wplister_db_version'
wp option delete 'wple_announcements'
wp option delete 'wple_last_announcement_check'
wp option delete 'wplister_listing_sku_sorting'
wp option delete 'wplister_license_email'
wp option delete 'wplister_update_channel'
wp option delete 'wple_update_channel'
wp option delete 'wplister_ebay_update_mode'
wp option delete 'wplister_sandbox_enabled'
wp option delete 'wplister_enable_ebay_motors'
wp option delete 'wplister_default_ebay_category_id'
wp option delete 'wplister_paypal_email'
wp option delete 'wplister_categories_map_ebay'
wp option delete 'wplister_categories_map_store'
wp option delete 'wplister_DispatchTimeMaxDetails'
wp option delete 'wplister_MinListingStartPrices'
wp option delete 'wplister_ReturnsWithinOptions'
wp option delete 'wplister_CountryDetails'
wp option delete 'wplister_ShippingPackageDetails'
wp option delete 'wplister_ShippingCostPaidByOptions'
wp option delete 'wplister_ShippingLocationDetails'
wp option delete 'wplister_ExcludeShippingLocationDetails'
wp option delete 'wplister_disable_sale_price'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'wplister_convert_dimensions'
wp option delete 'wplister_default_image_size'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'wplister_exclude_variation_values'
wp option delete 'wplister_enable_custom_product_prices'
wp option delete 'wplister_disable_changed_order_emails'
wp option delete 'wplister_use_ebay_order_number'
wp option delete 'wplister_disable_new_order_emails'
wp option delete 'wplister_disable_completed_order_emails'
wp option delete 'wplister_disable_processing_order_emails'
wp option delete 'wplister_display_product_counts'
wp option delete 'wplister_revise_on_update_default'
wp option delete 'wplister_display_item_condition'
wp option delete 'wplister_local_auction_display'
wp option delete 'wplister_enable_item_compat_tab'
wp option delete 'wplister_external_products_inventory'
wp option delete 'wplister_enable_mpn_and_isbn_fields'
wp option delete 'wplister_enhanced_item_specifics_ui'
wp option delete 'wplister_ShippingDiscountProfiles'
wp option delete 'wplister_last_post_var_count'
wp option delete 'wplister_apply_profile_to_ebay_price'
wp option delete 'wplister_wc2_gallery_fallback'
wp option delete 'wplister_item_specifics_limit'
wp option delete 'wplister_disable_item_specifics_cache'
wp option delete 'wplister_log_level'
wp option delete 'wplister_store_categories_sorting'
wp option delete 'wplister_fetch_orders_page_size'
wp option delete 'wplister_sync_incomplete_orders'
wp option delete 'wplister_enable_order_notify'
wp option delete 'wplister_notify_custom_email'
wp option delete 'wplister_skip_foreign_site_orders'
wp option delete 'wplister_match_sales_by_sku'
wp option delete 'wplister_autofill_missing_gtin'
wp option delete 'wplister_send_weight_and_size'
wp option delete 'wplister_convert_attributes_mode'
wp option delete 'wplister_exclude_attributes'
wp option delete 'wplister_disable_compat_list'
wp option delete 'wplister_description_blacklist'
wp option delete 'wplister_disable_variations'
wp option delete 'wplister_auto_update_ended_items'
wp option delete 'wplister_allowed_product_status'
wp option delete 'wplister_enable_php_syntax_check'
wp option delete 'wplister_process_shortcodes'
wp option delete 'wplister_remove_links'
wp option delete 'wplister_do_template_autop'
wp option delete 'wplister_templates_cache'
wp option delete 'wplister_oosc_mode'
wp option delete 'wplister_enable_grid_editor'
wp option delete 'wplister_is_enabled'
wp option delete 'wplister_enable_categories_page'
wp option delete 'wple_instance'
wp option delete 'wplister_templates_safe_mode'
wp option delete 'wplister_enable_template_uploads'
wp option delete 'wple_inventory_check_queue_data'
wp option delete 'wplister_multi_threading_limit'
wp option delete 'wplister_force_table_items_limit'
wp option delete 'wplister_preview_in_new_tab'
wp option delete 'wplister_enable_item_edit_link'
wp option delete 'wplister_ajax_error_handling'
wp option delete 'wplister_thumbs_display_size'
wp option delete 'wplister_xml_formatter'
wp option delete 'wplister_default_matcher_selection'
wp option delete 'wplister_disable_profile_popup_errors'
wp option delete 'wplister_new_order_status'
wp option delete 'woocommerce_hold_stock_minutes'

# Delete Transients
wp transient delete 'wple_admin_messages'
wp transient delete 'wple_auth_state'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wple_minting_failures_%' OR option_name LIKE '_site_transient_wple_minting_failures_%'"
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wple_daily_schedule'
wp cron event delete 'wplister_update_auctions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_auction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_auction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_auction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_auction_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_listing_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_listing_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_listing_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_listing_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_condition_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_condition_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_condition_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_condition_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_item_compatibility_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_item_compatibility_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_item_compatibility_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_item_compatibility_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_item_compatibility_names'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_item_compatibility_names'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_item_compatibility_names'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_item_compatibility_names'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_is_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_is_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_is_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_is_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_start_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_start_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_start_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_start_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_upc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_upc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_upc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_upc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_item_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_item_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_item_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_item_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_condition_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_condition_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_condition_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_condition_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_category_1_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_category_1_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_category_1_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_category_1_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_professional_grader'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_professional_grader'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_professional_grader'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_professional_grader'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_grade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_grade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_grade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_grade'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_certification_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_certification_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_certification_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_certification_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_epid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_epid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_epid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_epid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_isbn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_isbn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_isbn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_isbn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_buynow_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_buynow_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_buynow_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_buynow_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_reserve_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_reserve_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_reserve_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_reserve_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gallery_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gallery_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gallery_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gallery_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_hide_from_unlisted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_hide_from_unlisted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_hide_from_unlisted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_hide_from_unlisted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_global_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_global_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_global_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_global_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_ebayplus_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_ebayplus_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_ebayplus_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_ebayplus_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_bestoffer_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_bestoffer_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_bestoffer_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_bestoffer_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_bo_autoaccept_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_bo_autoaccept_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_bo_autoaccept_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_bo_autoaccept_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_bo_minimum_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_bo_minimum_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_bo_minimum_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_bo_minimum_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_seller_payment_profile_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_seller_payment_profile_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_seller_payment_profile_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_seller_payment_profile_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_seller_return_profile_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_seller_return_profile_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_seller_return_profile_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_seller_return_profile_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_payment_instructions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_payment_instructions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_payment_instructions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_payment_instructions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_category_2_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_category_2_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_category_2_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_category_2_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_store_category_1_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_store_category_1_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_store_category_1_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_store_category_1_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_store_category_2_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_store_category_2_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_store_category_2_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_store_category_2_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_item_specifics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_item_specifics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_item_specifics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_item_specifics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ebay_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ebay_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ebay_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ebay_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_sheet_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_sheet_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_sheet_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_sheet_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_manufacturer_street1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_manufacturer_street1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_manufacturer_street1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_manufacturer_street1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_manufacturer_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_manufacturer_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_manufacturer_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_manufacturer_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_manufacturer_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_manufacturer_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_manufacturer_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_manufacturer_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_manufacturer_street2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_manufacturer_street2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_manufacturer_street2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_manufacturer_street2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_manufacturer_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_manufacturer_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_manufacturer_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_manufacturer_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_manufacturer_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_manufacturer_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_manufacturer_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_manufacturer_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_manufacturer_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_manufacturer_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_manufacturer_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_manufacturer_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_manufacturer_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_manufacturer_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_manufacturer_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_manufacturer_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_manufacturer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_manufacturer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_manufacturer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_manufacturer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_street1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_street1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_street1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_street1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_street2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_street2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_street2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_street2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_responsible_persons_1_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_street1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_street1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_street1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_street1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_street2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_street2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_street2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_street2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_loc_shipping_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_loc_shipping_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_loc_shipping_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_loc_shipping_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_int_shipping_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_int_shipping_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_int_shipping_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_int_shipping_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_shipping_loc_calc_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_shipping_loc_calc_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_shipping_loc_calc_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_shipping_loc_calc_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_shipping_loc_flat_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_shipping_loc_flat_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_shipping_loc_flat_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_shipping_loc_flat_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_shipping_int_calc_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_shipping_int_calc_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_shipping_int_calc_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_shipping_int_calc_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_shipping_int_flat_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_shipping_int_flat_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_shipping_int_flat_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_shipping_int_flat_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_seller_shipping_profile_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_seller_shipping_profile_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_seller_shipping_profile_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_seller_shipping_profile_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_PackagingHandlingCosts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_PackagingHandlingCosts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_PackagingHandlingCosts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_PackagingHandlingCosts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_InternationalPackagingHandlingCosts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_InternationalPackagingHandlingCosts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_InternationalPackagingHandlingCosts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_InternationalPackagingHandlingCosts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_shipping_service_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_shipping_service_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_shipping_service_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_shipping_service_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_shipping_package'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_shipping_package'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_shipping_package'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_shipping_package'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_shipping_loc_enable_free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_shipping_loc_enable_free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_shipping_loc_enable_free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_shipping_loc_enable_free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_shipping_ShipToLocations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_shipping_ShipToLocations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_shipping_ShipToLocations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_shipping_ShipToLocations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_shipping_ExcludeShipToLocations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_shipping_ExcludeShipToLocations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_shipping_ExcludeShipToLocations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_shipping_ExcludeShipToLocations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nyp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nyp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nyp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nyp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_suggested_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_suggested_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_suggested_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_suggested_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_msrp_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_msrp_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_msrp_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_msrp_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebay_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebay_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebay_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebay_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_additional_variation_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_autopay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_autopay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_autopay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_autopay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpm_gtin_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpm_gtin_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpm_gtin_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpm_gtin_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebay_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebay_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebay_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebay_subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unit_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unit_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unit_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unit_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unit_regular_price_per_unit_mult'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unit_regular_price_per_unit_mult'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unit_regular_price_per_unit_mult'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unit_regular_price_per_unit_mult'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unit_regular_price_per_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unit_regular_price_per_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unit_regular_price_per_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unit_regular_price_per_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_image_eps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_image_eps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_image_eps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_image_eps'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_sheet_image_eps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_sheet_image_eps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_sheet_image_eps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_gpsr_energy_efficiency_sheet_image_eps'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_msrp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_msrp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_msrp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_msrp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variation_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variation_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variation_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variation_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwpvg_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_watch_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_watch_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_watch_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_watch_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebay_title_prefix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebay_title_prefix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebay_title_prefix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebay_title_prefix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebay_title_suffix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebay_title_suffix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebay_title_suffix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebay_title_suffix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebay_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebay_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebay_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebay_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amazon_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amazon_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amazon_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amazon_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_cog_order_total_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_cog_order_total_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_cog_order_total_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_cog_order_total_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebay_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebay_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebay_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebay_category_id'"
