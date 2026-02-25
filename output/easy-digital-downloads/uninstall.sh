#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_pro_activation_date'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'edd_version_upgraded_from'
wp option delete 'edd_doing_upgrade'
wp option delete 'edd_next_order_number'
wp option delete 'edd_enable_cart_preview_rest_error'
wp option delete '_edd_v30_doing_order_migration'
wp option delete 'edd_v30_cli_migration_running'
wp option delete 'edd_paypal_webhook_sync_failed'
wp option delete 'edd_settings'
wp option delete 'edd_temp_recount_earnings'
wp option delete 'edd_earnings_total'
wp option delete 'edd_earnings_total_without_tax'
wp option delete 'edd_last_payment_number'
wp option delete 'edd_reset_tables_to_truncate'
wp option delete 'edd_fdlm_total_logs'
wp option delete 'edd_fdlm_term_tax_id'
wp option delete 'edd_logs_upgraded'
wp option delete 'edd_settings_general'
wp option delete 'edd_discounts'
wp option delete 'edd_settings_taxes'
wp option delete 'edd_upgrade_sequential'
wp option delete 'edd_version'
wp option delete 'edd_version_downgraded_from'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_v3_migration_step_%'"
wp option delete 'edd_v3_migration_pending'
wp option delete 'edd_default_api_version'
wp option delete 'edd_tax_rates'
wp option delete 'edd_stripe_payment_gateway_license_key_active'
wp option delete 'edd_stripe_pro_payment_gateway_license_key_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_active'"
wp option delete 'edd_licensed_extensions'
wp option delete 'edd_payment_totals_upgraded'
wp option delete 'edd_email_summary_blurbs'
wp option delete 'email_summary_blurbs_sent'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_paypal_commerce_connect_details_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_paypal_commerce_webhook_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_merchant_details'"
wp option delete '_edds_legacy_elements_enabled'
wp option delete 'edds_stripe_version'
wp option delete 'edd_session_handling'
wp option delete 'edd_onboarding_completed'
wp option delete 'edd_activation_date'
wp option delete 'site_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_priv_%'"
wp option delete 'edd_completed_upgrades'
wp option delete 'edd_onboarding_started'
wp option delete 'edd_pro_license_key'
wp option delete 'recently_activated'
wp option delete 'wp_mail_smtp_activation_prevent_redirect'
wp option delete 'aioseo_activation_redirect'
wp option delete 'edd_all_extension_data'
wp option delete 'edd_tracking_notice'
wp option delete 'edd_onboarding_latest_step'
wp option delete 'edd_onboarding_prevent_redirect'
wp option delete 'edd_connect_token'
wp option delete 'edd_extension_category_1592_data'
wp option delete 'edd_pass_licenses'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%edd_customermeta_db_version'"
wp option delete 'wp_edd_customermeta_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%edd_customers_db_version'"
wp option delete 'wp_edd_customers_db_version'
wp option delete 'edd_stripe_account_capabilities'
wp option delete 'edd_use_php_sessions'
wp option delete 'edd_tracking_last_send'
wp option delete 'edd_telemetry_uuid'
wp option delete 'edd_notification_req_timeout'
wp option delete 'edd_tokenizer_signing_key'

# Delete Transients
wp transient delete 'edd_lite_just_activated'
wp transient delete 'update_plugins'
wp transient delete 'edd_total_api_keys'
wp transient delete 'edd_admin_notices'
wp transient delete 'edd_stats_earnings'
wp transient delete 'edd_stats_sales'
wp transient delete 'edd_estimated_monthly_stats'
wp transient delete 'edd_earnings_total'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_edd_estimated_monthly_stats%' OR option_name LIKE '_site_transient_edd_estimated_monthly_stats%'"
wp transient delete 'edd_earnings_by_taxonomy_show_report'
wp transient delete 'edd_earnings_total_without_tax'
wp transient delete 'edd_check_protection_files'
wp transient delete '_edd_ajax_works'
wp transient delete 'edd_cache_excluded_uris'
wp transient delete 'edd_total_earnings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_purchases' OR option_name LIKE '_site_transient_%_purchases'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_edd_paypal_commerce_connect_started_%' OR option_name LIKE '_site_transient_edd_paypal_commerce_connect_started_%'"
wp transient delete 'edd_stripe_new_install'
wp transient delete 'edd_onboarding_redirect'
wp transient delete '_edd_installed'
wp transient delete 'edd_refresh_404_permalinks'
wp transient delete 'edd_distinct_order_currencies'
wp transient delete 'edd_stripe_check_license'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_is_ensure_recurring_actions_scheduled'
wp transient delete 'as_comment_count'
wp transient delete 'edd_acr_promo_abandoned_data'
wp transient delete 'edd_pass_refreshed'
wp transient delete '_monsterinsights_activation_redirect'
wp transient delete 'edd-sc-receipt-check'
wp transient delete 'edd_download_search'
wp transient delete 'edds_stripe_check_license'

# Clear Cron Jobs
wp cron event delete 'edd_daily_scheduled_events'
wp cron event delete 'edd_daily_cron'
wp cron event delete 'edd_weekly_cron'
wp cron event delete 'edd_email_summary_cron'
wp cron event delete 'edd_weekly_scheduled_events'
wp cron event delete 'edd_cleanup_sessions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_nginx_redirect_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_nginx_redirect_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_nginx_redirect_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_nginx_redirect_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_htaccess_missing_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_htaccess_missing_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_htaccess_missing_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_htaccess_missing_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_refundability'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_refundability'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_refundability'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_refundability'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_download_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_download_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_download_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_download_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_hide_purchase_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_hide_purchase_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_hide_purchase_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_hide_purchase_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_button_behavior'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_button_behavior'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_button_behavior'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_button_behavior'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_download_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_download_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_download_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_download_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_download_earnings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_download_earnings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_download_earnings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_download_earnings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_product_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_product_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_product_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_product_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variable_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_download_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_log_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_log_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_log_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_log_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_log_user_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_log_user_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_log_user_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_log_user_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_log_file_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_log_file_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_log_file_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_log_file_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_log_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_log_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_log_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_log_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_log_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_log_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_log_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_log_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_edd_discount_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_edd_discount_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_edd_discount_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_edd_discount_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_payment_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_payment_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_payment_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_payment_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_feature_download'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_feature_download'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_feature_download'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_feature_download'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'download_term_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'download_term_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'download_term_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'download_term_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_saved_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_saved_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_saved_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_saved_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_cart_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_cart_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_cart_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_cart_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_default_price_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_default_price_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_default_price_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_default_price_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_price_options_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_price_options_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_price_options_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_price_options_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_refund_window'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_refund_window'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_refund_window'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_refund_window'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_bundled_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_bundled_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_bundled_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_bundled_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_download_gross_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_download_gross_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_download_gross_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_download_gross_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_download_gross_earnings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_download_gross_earnings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_download_gross_earnings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_download_gross_earnings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_quantities_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_quantities_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_quantities_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_quantities_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_bundled_products_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_bundled_products_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_bundled_products_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_bundled_products_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_payment_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_payment_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_payment_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_payment_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_sales_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_sales_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_sales_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_sales_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_edd_download_limit_override_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_edd_download_limit_override_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_edd_download_limit_override_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_edd_download_limit_override_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_paypal_commerce_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_paypal_commerce_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_paypal_commerce_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_paypal_commerce_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_download_tax_exclusive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_download_tax_exclusive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_download_tax_exclusive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_download_tax_exclusive'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_pending_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_pending_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_pending_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_pending_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bounce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bounce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bounce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bounce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_das_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_das_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_das_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_das_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
