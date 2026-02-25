#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_price_display_suffix'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'wc_brands_show_description'
wp option delete 'woocommerce_brand_permalink'
wp option delete 'woocommerce_task_list_complete'
wp option delete 'woocommerce_task_list_hidden'
wp option delete 'woocommerce_db_version'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_myaccount_lost_password_endpoint'
wp option delete 'woocommerce_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_admin_notice_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_default_customer_address'
wp option delete 'woocommerce_maxmind_geolocation_settings'
wp option delete 'woocommerce_file_download_method'
wp option delete 'woocommerce_permalinks'
wp option delete 'woocommerce_queue_flush_rewrite_rules'
wp option delete 'woocommerce_product_type'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_sell_in_person'
wp option delete 'woocommerce_allow_tracking'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_setup_background_installing_%'"
wp option delete 'woocommerce_setup_background_installing_woocommerce-services'
wp option delete 'woocommerce_setup_background_installing_jetpack'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_stripe_settings'
wp option delete 'woocommerce_ppec_paypal_settings'
wp option delete 'woocommerce_setup_automated_taxes'
wp option delete 'woocommerce_setup_shipping_labels'
wp option delete 'default_product_cat'
wp option delete 'woocommerce_downloads_add_hash_to_filename'
wp option delete 'woocommerce_admin_footer_text_rated'
wp option delete 'woothemes_helper_master_key'
wp option delete 'woocommerce_allow_bulk_remove_personal_data'
wp option delete 'woocommerce_show_marketplace_suggestions'
wp option delete 'woocommerce_marketplace_suggestions'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_refund_returns_page_id'
wp option delete 'woocommerce_refund_returns_page_created'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_api_enabled'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_admin_dismissed_try_email_improvements_modal'
wp option delete 'woocommerce_email_improvements_default_enabled'
wp option delete 'woocommerce_email_improvements_enabled_count'
wp option delete 'woocommerce_email_improvements_first_enabled_at'
wp option delete 'woocommerce_email_improvements_last_enabled_at'
wp option delete 'woocommerce_email_improvements_disabled_count'
wp option delete 'woocommerce_email_improvements_first_disabled_at'
wp option delete 'woocommerce_email_improvements_last_disabled_at'
wp option delete 'woocommerce_schema_missing_tables'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_shipping_cost_requires_address'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_review_rating_verification_required'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_allowed_countries'
wp option delete 'woocommerce_all_except_countries'
wp option delete 'woocommerce_specific_allowed_countries'
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'woocommerce_specific_ship_to_countries'
wp option delete 'woocommerce_calc_discounts_sequentially'
wp option delete 'woocommerce_downloads_require_login'
wp option delete 'woocommerce_downloads_redirect_fallback_allowed'
wp option delete 'woocommerce_downloads_deliver_inline'
wp option delete 'woocommerce_downloads_count_partial'
wp option delete 'woocommerce_notify_low_stock'
wp option delete 'woocommerce_stock_email_recipient'
wp option delete 'woocommerce_notify_no_stock'
wp option delete 'woocommerce_address_autocomplete_enabled'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_checkout_highlight_required_fields'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_unforce_ssl_checkout'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_admin_install_timestamp'
wp option delete 'woocommerce_schema_version'
wp option delete 'woocommerce_single_image_width'
wp option delete 'woocommerce_thumbnail_image_width'
wp option delete 'woocommerce_demo_store'
wp option delete 'woocommerce_coming_soon'
wp option delete 'woocommerce_store_pages_only'
wp option delete 'woocommerce_email_auto_sync_with_theme'
wp option delete 'woocommerce_back_in_stock_allow_signups'
wp option delete 'woocommerce_analytics_scheduled_import'
wp option delete 'woocommerce_email_improvements_existing_store_enabled'
wp option delete 'woocommerce_history_of_autoinstalled_plugins'
wp option delete 'woocommerce_autoinstalled_plugins'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'mailchimp_woocommerce_plugin_do_activation_redirect'
wp option delete 'woocommerce_downloads_grant_access_after_payment'
wp option delete 'woocommerce_calc_shipping'
wp option delete 'woocommerce_gateway_order'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'current_theme_supports_woocommerce'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_erasure_request_removes_order_data'
wp option delete 'woocommerce_erasure_request_removes_download_data'
wp option delete 'woocommerce_trash_pending_orders'
wp option delete 'woocommerce_trash_failed_orders'
wp option delete 'woocommerce_trash_cancelled_orders'
wp option delete 'woocommerce_anonymize_refunded_orders'
wp option delete 'woocommerce_anonymize_completed_orders'
wp option delete 'woocommerce_delete_inactive_accounts'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_checkout_pay_endpoint'
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'woocommerce_myaccount_orders_endpoint'
wp option delete 'woocommerce_myaccount_view_order_endpoint'
wp option delete 'woocommerce_myaccount_downloads_endpoint'
wp option delete 'woocommerce_myaccount_edit_account_endpoint'
wp option delete 'woocommerce_myaccount_edit_address_endpoint'
wp option delete 'woocommerce_myaccount_payment_methods_endpoint'
wp option delete 'woocommerce_logout_endpoint'
wp option delete 'woocommerce_myaccount_add_payment_method_endpoint'
wp option delete 'woocommerce_myaccount_delete_payment_method_endpoint'
wp option delete 'woocommerce_myaccount_set_default_payment_method_endpoint'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_maybe_regenerate_images_hash'
wp option delete 'woocommerce_shipping_debug_mode'
wp option delete 'woocommerce_shipping_hide_rates_when_free'
wp option delete 'woocommerce_tracker_last_send'
wp option delete 'woocommerce_allow_tracking_last_modified'
wp option delete 'woocommerce_allow_tracking_first_optin'
wp option delete 'woocommerce_woocommerce_payments_settings'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_enable_delayed_account_creation'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_use_db_transactions_for_custom_orders_table_data_sync'
wp option delete 'woocommerce_db_transactions_isolation_level_for_custom_orders_table_data_sync'
wp option delete 'pickup_location_pickup_locations'
wp option delete 'woocommerce_mobile_app_usage'
wp option delete 'woocommerce_feature_email_improvements_enabled'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_product_lookup_table_is_generating'
wp option delete 'woocommerce_pos_store_name'
wp option delete 'woocommerce_pos_store_email'
wp option delete 'woocommerce_pos_store_phone'
wp option delete 'woocommerce_pos_store_address'
wp option delete 'woocommerce_pos_refund_returns_policy'
wp option delete 'woocommerce_email_reply_to_enabled'
wp option delete 'woocommerce_email_reply_to_name'
wp option delete 'woocommerce_email_reply_to_address'
wp option delete 'woocommerce_bacs_accounts'
wp option delete 'woocommerce_paypal_settings'
wp option delete 'woocommerce_new_order_settings'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_default_homepage_layout'
wp option delete 'woocommerce_task_list_hidden_lists'
wp option delete 'woocommerce_extended_task_list_hidden'
wp option delete 'woocommerce_task_list_appearance_complete'
wp option delete 'wc_remote_inbox_notifications_specs'
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_has_tracked_default_theme'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'woocommerce_review_rating_required'
wp option delete 'woocommerce_thumbnail_cropping'
wp option delete 'woocommerce_thumbnail_cropping_custom_width'
wp option delete 'woocommerce_thumbnail_cropping_custom_height'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_stock_format'
wp option delete 'woocommerce_ship_to_destination'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'woocommerce_catalog_columns'
wp option delete 'woocommerce_catalog_rows'
wp option delete 'woocommerce_checkout_terms_and_conditions_checkbox_text'
wp option delete 'woocommerce_checkout_privacy_policy_text'
wp option delete 'woocommerce_registration_privacy_policy_text'
wp option delete 'woocommerce_demo_store_notice'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_shop_page_display'
wp option delete 'woocommerce_category_archive_display'
wp option delete 'woocommerce_prepend_shop_page_to_urls'
wp option delete 'woocommerce_product_category_slug'
wp option delete 'woocommerce_product_tag_slug'
wp option delete 'woocommerce_prepend_shop_page_to_products'
wp option delete 'woocommerce_product_slug'
wp option delete 'woocommerce_prepend_category_to_products'
wp option delete 'woocommerce_shop_show_subcategories'
wp option delete 'woocommerce_hide_products_when_showing_subcategories'
wp option delete 'woocommerce_show_subcategories'
wp option delete 'woocommerce_tax_rates'
wp option delete 'woocommerce_local_tax_rates'
wp option delete 'woocommerce_tax_rates_backup'
wp option delete 'woocommerce_local_tax_rates_backup'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_image_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_image_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_image_crop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_image_size'"
wp option delete 'woocommerce_pay_page_id'
wp option delete 'woocommerce_thanks_page_id'
wp option delete 'woocommerce_view_order_page_id'
wp option delete 'woocommerce_change_password_page_id'
wp option delete 'woocommerce_edit_address_page_id'
wp option delete 'woocommerce_lost_password_page_id'
wp option delete 'woocommerce_ship_to_billing_address_only'
wp option delete 'woocommerce_ship_to_billing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_table_rate_default_priority_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_table_rate_priorities_%'"
wp option delete 'woocommerce_updated_instance_ids'
wp option delete 'shop_catalog_image_size'
wp option delete 'shop_single_image_size'
wp option delete 'woocommerce_update_340_states'
wp option delete 'woocommerce_tax_classes'
wp option delete 'woocommerce_update_450_last_coupon_id'
wp option delete 'woocommerce_update_500_last_product_id'
wp option delete 'woocommerce_new_product_management_enabled'
wp option delete 'woocommerce_multichannel_marketing_enabled'
wp option delete 'woocommerce_marketing_overview_welcome_hidden'
wp option delete 'woocommerce_show_lys_tour'
wp option delete 'woocommerce_network_wide_customers'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_analytics_uses_old_full_refund_data'
wp option delete 'woocommerce_order_attribution_install_banner_dismissed'
wp option delete 'woocommerce_feature_reactify-classic-payments-settings_enabled'
wp option delete 'last_fetch_patterns_request'
wp option delete 'woocommerce_feature_marketplace_enabled'
wp option delete 'woocommerce_tracker_ua'
wp option delete 'woocommerce_private_link'
wp option delete 'woocommerce_share_key'
wp option delete 'woocommerce_admin_launch_your_store_survey_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_onboarding_plugins_install_and_activate_async_%'"
wp option delete 'woocommerce_onboarding_homepage_post_id'
wp option delete 'woocommerce_actionable_order_statuses'
wp option delete 'woocommerce_date_type'
wp option delete 'woocommerce_pickup_location_settings'
wp option delete 'woocommerce_task_list_keep_completed'
wp option delete 'woocommerce_admin_customize_store_completed'
wp option delete 'woocommerce_admin_dismissed_mobile_app_modal'
wp option delete 'woocommerce_admin_reviewed_default_shipping_zones'
wp option delete 'woocommerce_admin_created_default_shipping_zones'
wp option delete 'wc_connect_taxes_enabled'
wp option delete 'woocommerce_no_sales_tax'
wp option delete 'woocommerce_admin_dismissed_in_app_marketplace_tour'
wp option delete 'gutenberg-experiments'
wp option delete 'codisto_merchantid'
wp option delete 'klaviyo_settings'
wp option delete 'tt4b_access_token'
wp option delete 'woocommerce_onboarding_profile'
wp option delete 'schema-ActionScheduler_StoreSchema'
wp option delete 'fresh_site'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'woocommerce_checkout_company_field'
wp option delete 'woocommerce_checkout_address_2_field'
wp option delete 'rewrite_rules'
wp option delete 'woocommerce_google_analytics_settings'
wp option delete 'wc_blocks_db_schema_version'
wp option delete 'woocommerce_bacs_settings'
wp option delete 'woocommerce_cod_settings'
wp option delete 'woocommerce_cheque_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pickup_locations'"
wp option delete 'woocommerce_hooked_blocks_version'
wp option delete 'woocommerce_paypal_account_restricted_status'
wp option delete 'woocommerce_address_autocomplete_provider'
wp option delete 'woocommerce_analytics_order_fulfillment_status_regenerated'
wp option delete 'woocommerce_block_template_logging_threshold'
wp option delete 'woocommerce_admin_dismissed_email_improvements_modal'
wp option delete 'woocommerce_merchant_email_notifications'
wp option delete 'woocommerce_task_list_tracked_completed_tasks'
wp option delete 'jetpack_active_plan'
wp option delete 'jetpack_site_products'
wp option delete 'wcpay_welcome_page_exit_survey_more_info_needed_timestamp'
wp option delete 'wcpay_welcome_page_viewed_timestamp'
wp option delete 'woocommerce_setup_jetpack_opted_in'
wp option delete 'woocommerce_analytics_enabled'
wp option delete 'wcpay_account_data'
wp option delete 'kco_credentials_error'
wp option delete 'mollie-payments-for-woocommerce_test_api_key'
wp option delete 'mollie-payments-for-woocommerce_live_api_key'
wp option delete 'mollie-payments-for-woocommerce_test_mode_enabled'
wp option delete 'woocommerce_payfast_invalid_credentials'
wp option delete 'woocommerce_paymob-main_settings'
wp option delete 'woocommerce_paypal_branded'
wp option delete 'woocommerce_shipping_dismissed_timestamp'
wp option delete 'wcpay_welcome_page_incentives_dismissed'
wp option delete 'wc_migrator_products_count'
wp option delete 'woocommerce_feature_rest_api_caching_enabled'
wp option delete 'woocommerce_rest_api_enable_backend_caching'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_feature_cost_of_goods_sold_enabled'
wp option delete 'woocommerce_initial_orders_pending_sync_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_term_%'"
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_text_color'
wp option delete 'woocommerce_email_footer_text_color'
wp option delete 'woocommerce_feature_block_email_editor_enabled'
wp option delete 'woocommerce_fulfillments_db_tables_created'
wp option delete 'auto_fulfill_downloadable'
wp option delete 'auto_fulfill_virtual'
wp option delete 'woocommerce_attribute_lookup_enabled'
wp option delete 'woocommerce_attribute_lookup_last_product_id_to_process'
wp option delete 'woocommerce_attribute_lookup_processed_count'
wp option delete 'woocommerce_attribute_lookup_optimized_updates'
wp option delete 'woocommerce_attribute_lookup_direct_updates'
wp option delete 'woocommerce_attribute_lookup_regeneration_in_progress'
wp option delete 'woocommerce_attribute_lookup_regeneration_aborted'
wp option delete 'woocommerce_customer_stock_notifications_create_account_on_signup'
wp option delete 'woocommerce_customer_stock_notifications_allow_signups'
wp option delete 'woocommerce_customer_stock_notifications_require_double_opt_in'
wp option delete 'woocommerce_customer_stock_notifications_require_account'
wp option delete 'woocommerce_customer_stock_notifications_unverified_deletions_days_threshold'
wp option delete 'wc_customer_stock_notifications_product_sync_notice'
wp option delete 'woocommerce_rest_api_enable_cache_headers'
wp option delete 'widget_block'
wp option delete 'woocommerce_autoinstalling_plugins'
wp option delete 'woocommerce_helper_data'
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_email_header_alignment'
wp option delete 'woocommerce_email_header_image_width'
wp option delete 'woocommerce_email_font_family'
wp option delete 'woocommerce_review_rating_verification_label'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_logout_page_id'
wp option delete 'stats_options'
wp option delete 'jetpack_activation_source'
wp option delete 'jetpack_affiliate_code'
wp option delete 'jetpack_partner_subsidiary_id'
wp option delete 'jetpack_offline_mode'
wp option delete 'vaultpress'
wp option delete 'vaultpress_auto_register'
wp option delete 'jetpack_sso_remove_login_form'
wp option delete 'jetpack_sso_match_by_email'
wp option delete 'jetpack_sso_require_two_step'
wp option delete 'jetpack_protect_active'
wp option delete 'wpcom_public_coming_soon'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_needs_processing' OR option_name LIKE '_site_transient_%_needs_processing'"
wp transient delete 'wc_admin_report'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_report_%' OR option_name LIKE '_site_transient_wc_report_%'"
wp transient delete 'wc_setup_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_version_data' OR option_name LIKE '_site_transient_%_version_data'"
wp transient delete '_woocommerce_helper_subscriptions'
wp transient delete '_woocommerce_helper_updates'
wp transient delete '_woocommerce_helper_updates_count'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_woocommerce_helper_product_usage_notice_rules'
wp transient delete 'wc_settings_email_improvements_reverted'
wp transient delete 'woocommerce_system_status_wp_version_check'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_layered_nav_counts_%' OR option_name LIKE '_site_transient_wc_layered_nav_counts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_geoip_%' OR option_name LIKE '_site_transient_geoip_%'"
wp transient delete 'wc_installing'
wp transient delete '_wc_activation_redirect'
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'woocommerce_activated_plugin'
wp transient delete 'rest_api_coupons_type_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_product_children_%' OR option_name LIKE '_site_transient_wc_product_children_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_abtest_variation_%' OR option_name LIKE '_site_transient_abtest_variation_%'"
wp transient delete 'wc_count_comments'
wp transient delete 'as_comment_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_layered_nav_counts_pa_%' OR option_name LIKE '_site_transient_wc_layered_nav_counts_pa_%'"
wp transient delete 'woocommerce_test_remote_post'
wp transient delete 'woocommerce_test_remote_get'
wp transient delete 'wc_system_status_active_plugins'
wp transient delete 'wc_system_status_inactive_plugins'
wp transient delete 'wc_system_status_dropins_mu_plugins'
wp transient delete 'wc_system_status_theme_info'
wp transient delete 'wc_tracks_blog_details'
wp transient delete 'wc_products_onsale'
wp transient delete 'wc_featured_products'
wp transient delete 'wc_term_counts'
wp transient delete 'wc_addons_sections'
wp transient delete 'wc_addons_featured'
wp transient delete 'wc_marketing_recommended_plugins'
wp transient delete 'ptk_patterns'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_blueprint_import_session_%' OR option_name LIKE '_site_transient_blueprint_import_session_%'"
wp transient delete 'wc_admin_stock_count_lowstock'
wp transient delete 'wc_admin_product_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_admin_stock_count_%' OR option_name LIKE '_site_transient_wc_admin_stock_count_%'"
wp transient delete 'woocommerce_block_asset_resource_hints'
wp transient delete 'woocommerce_blocks_patterns'
wp transient delete 'wc_block_product_filter_attribute_default_attribute'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transient-version' OR option_name LIKE '_site_transient_%-transient-version'"
wp transient delete 'woocommerce_email_footer_text'
wp transient delete 'woocommerce_email_header_image'
wp transient delete 'woocommerce_email_background_color'
wp transient delete 'woocommerce_email_body_background_color'
wp transient delete 'woocommerce_email_base_color'
wp transient delete 'woocommerce_email_text_color'
wp transient delete 'woocommerce_email_footer_text_color'
wp transient delete 'woocommerce_email_header_alignment'
wp transient delete 'woocommerce_email_header_image_width'
wp transient delete 'woocommerce_email_font_family'
wp transient delete 'jetpack_assumed_site_creation_date'
wp transient delete 'jetpack_idc_possible_dynamic_site_url_detected'
wp transient delete 'jetpack_idc_local'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jetpack_idc_ip_requester_%' OR option_name LIKE '_site_transient_jetpack_idc_ip_requester_%'"
wp transient delete 'jetpack_is_single_user'

# Clear Cron Jobs
wp cron event delete 'delete_version_transients'
wp cron event delete 'woocommerce_scheduled_sales'
wp cron event delete 'woocommerce_cancel_unpaid_orders'
wp cron event delete 'woocommerce_cleanup_sessions'
wp cron event delete 'woocommerce_cleanup_personal_data'
wp cron event delete 'woocommerce_cleanup_logs'
wp cron event delete 'woocommerce_geoip_updater'
wp cron event delete 'woocommerce_tracker_send_event'
wp cron event delete 'woocommerce_cleanup_rate_limits'
wp cron event delete 'wc_connect_fetch_service_schemas'
wp cron event delete 'woocommerce_flush_rewrite_rules'
wp cron event delete 'wp_scheduled_auto_draft_delete'
wp cron event delete 'wc_admin_daily'
wp cron event delete 'generate_category_lookup_table'
wp cron event delete 'wc_admin_unsnooze_admin_notes'
wp cron event delete 'jetpack_heartbeat'
wp cron event delete 'jetpack_clean_nonces'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_brands'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_brands'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_brands'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_brands'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_brands'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_brands'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_brands'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_brands'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-box-order_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-box-order_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-box-order_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-box-order_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_no_secure_connection_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_no_secure_connection_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_no_secure_connection_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_no_secure_connection_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'download_directories_sync_complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'download_directories_sync_complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'download_directories_sync_complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'download_directories_sync_complete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_maxmind_license_key_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_maxmind_license_key_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_maxmind_license_key_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_maxmind_license_key_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_redirect_download_method_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_redirect_download_method_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_redirect_download_method_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_redirect_download_method_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_uploads_directory_is_unprotected_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_uploads_directory_is_unprotected_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_uploads_directory_is_unprotected_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_uploads_directory_is_unprotected_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_base_tables_missing_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_base_tables_missing_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_base_tables_missing_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_base_tables_missing_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_woo_updater_not_installed_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_woo_updater_not_installed_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_woo_updater_not_installed_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_woo_updater_not_installed_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_woo_updater_not_activated_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_woo_updater_not_activated_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_woo_updater_not_activated_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_woo_updater_not_activated_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_headstart_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_headstart_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_headstart_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_headstart_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_marketplace_suggestions_dismissed_suggestions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_marketplace_suggestions_dismissed_suggestions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_marketplace_suggestions_dismissed_suggestions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_marketplace_suggestions_dismissed_suggestions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_last_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_last_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_last_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_last_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_load_saved_cart_after_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_discount_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_discount_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_discount_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_discount_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_address_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_address_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_address_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_address_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_download_permissions_granted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_download_permissions_granted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_download_permissions_granted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_download_permissions_granted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recorded_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recorded_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recorded_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recorded_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recorded_coupon_usage_counts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recorded_coupon_usage_counts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recorded_coupon_usage_counts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recorded_coupon_usage_counts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_order_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_order_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_order_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_order_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_stock_reduced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cogs_total_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_amount_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_amount_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_amount_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_amount_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fee_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fee_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fee_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fee_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_tax_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_tax_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_tax_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_tax_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_line_subtotal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_line_subtotal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_line_subtotal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_line_subtotal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'method_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'method_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'method_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'method_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instance_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instance_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instance_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instance_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'taxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'taxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'taxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'taxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rate_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rate_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rate_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rate_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'compound'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'compound'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'compound'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'compound'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_tax_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_tax_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_tax_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_tax_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rate_percent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rate_percent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rate_percent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rate_percent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cogs_value_is_additive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cogs_value_is_additive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cogs_value_is_additive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cogs_value_is_additive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_paypal_migration_completed_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_paypal_migration_completed_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_paypal_migration_completed_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_paypal_migration_completed_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'order_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'order_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'order_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'order_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_tracks_anon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_tracks_anon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_tracks_anon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_tracks_anon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_count_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_count_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_count_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_count_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_api_consumer_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_api_consumer_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_api_consumer_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_api_consumer_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_api_consumer_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_api_consumer_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_api_consumer_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_api_consumer_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_api_key_permissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_api_key_permissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_api_key_permissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_api_key_permissions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_children'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_topic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_api_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_api_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_api_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_api_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_last_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_email_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_email_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_email_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_email_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'woocommerce_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'woocommerce_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'woocommerce_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woocommerce_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'woocommerce_admin_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'woocommerce_admin_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'woocommerce_admin_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woocommerce_admin_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_admin_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_admin_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_admin_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_admin_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_migration_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_migration_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_migration_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_migration_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'file_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'file_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'file_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'file_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'imported_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'imported_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'imported_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'imported_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'total_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'total_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'total_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'total_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frontloading_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frontloading_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frontloading_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frontloading_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attempts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'current_stage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'current_stage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'current_stage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'current_stage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'finished_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'finished_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'finished_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'finished_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'started_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'started_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'started_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'started_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'importer_cursor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'importer_cursor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'importer_cursor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'importer_cursor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'original_arguments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'original_arguments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'original_arguments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'original_arguments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'device_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'device_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'device_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'device_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'note_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'note_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'note_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'note_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stock_notifications_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stock_notifications_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stock_notifications_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stock_notifications_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_count_product_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_count_product_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_count_product_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_count_product_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_count_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_count_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_count_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_count_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_force_logout'"
