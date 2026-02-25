#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_coming_soon'
wp option delete '_wcpay_onboarding_stripe_connected'
wp option delete 'wcpay_multi_currency_setup_completed'
wp option delete 'woocommerce_dismissed_todo_tasks'
wp option delete 'woocommerce_deleted_todo_tasks'
wp option delete 'woocommerce_remind_me_later_todo_tasks'
wp option delete 'woocommerce_currency'
wp option delete 'wcpay_instant_deposit_notice_dismissed'
wp option delete 'wcpay_instant_deposits_previously_eligible'
wp option delete 'wcpay_duplicate_payment_method_notices_dismissed'
wp option delete 'wcpay_survey_payment_overview_submitted'
wp option delete 'wcpay_exit_survey_last_shown'
wp option delete 'wcpay_activation_timestamp'
wp option delete 'wcpay_menu_badge_hidden'
wp option delete 'woopay_invalid_extension_found'
wp option delete '_wcpay_feature_customer_multi_currency'
wp option delete 'wcpay_next_deposit_notice_dismissed'
wp option delete 'current_protection_level'
wp option delete 'woocommerce_permalinks'
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcpay_session_rate_limiter_disabled_%'"
wp option delete 'wcpay_should_redirect_to_onboarding'
wp option delete 'woocommerce_address_autocomplete_enabled'
wp option delete 'wcpay_check_subscriptions_eligibility_after_onboarding'
wp option delete 'woocommerce_onboarding_profile'
wp option delete 'wcpay_frt_review_feature_active'
wp option delete 'wcpay_fraud_protection_welcome_tour_dismissed'
wp option delete 'woocommerce_woocommerce_payments_settings'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'wcpay_fee_remediation_status'
wp option delete 'wcpay_fee_remediation_stats'
wp option delete 'woocommerce_woocommerce_payments_version'
wp option delete 'woocommerce_allow_tracking'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_enable_signup_from_checkout_for_subscriptions'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_allowed_countries'
wp option delete 'woocommerce_specific_allowed_countries'
wp option delete 'woocommerce_all_except_countries'
wp option delete '_wcpay_feature_auth_and_capture'
wp option delete '_wcpay_feature_progressive_onboarding'
wp option delete '_wcpay_feature_client_secret_encryption'
wp option delete '_wcpay_feature_allow_subscription_migrations'
wp option delete '_wcpay_feature_custom_deposit_schedules'
wp option delete '_wcpay_feature_account_overview_task_list'
wp option delete '_wcpay_feature_account_overview'
wp option delete '_wcpay_feature_sepa'
wp option delete '_wcpay_feature_sofort'
wp option delete '_wcpay_feature_giropay'
wp option delete '_wcpay_feature_grouped_settings'
wp option delete '_wcpay_feature_upe_settings_preview'
wp option delete '_wcpay_feature_upe'
wp option delete '_wcpay_feature_upe_split'
wp option delete '_wcpay_feature_upe_deferred_intent'
wp option delete '_wcpay_feature_dispute_on_transaction_page'
wp option delete '_wcpay_feature_streamline_refunds'
wp option delete 'wcpay_fraud_protection_settings_active'
wp option delete '_wcpay_feature_mc_order_meta_helper'
wp option delete '_wcpay_feature_pay_for_order_flow'
wp option delete '_wcpay_feature_simplify_deposits_ui'
wp option delete '_wcpay_fraud_protection_settings_enabled'
wp option delete '_wcpay_feature_platform_checkout_subscriptions_enabled'
wp option delete '_wcpay_feature_platform_checkout'
wp option delete '_wcpay_feature_capital'
wp option delete 'wcpay_capability_request_dismissed_notices'
wp option delete 'wcpay_onboarding_eligibility_modal_dismissed'
wp option delete 'woocommerce_woocommerce_payments_apple_pay_settings'
wp option delete 'woocommerce_woocommerce_payments_google_pay_settings'
wp option delete 'wcpay_multi_currency_show_store_currency_changed_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcpay_multi_currency_exchange_rate_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcpay_multi_currency_manual_rate_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcpay_multi_currency_price_rounding_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcpay_multi_currency_price_charm_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled_currencies'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_auto_currency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_storefront_switcher'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_store_currency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_store_currency_changed_notice'"
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_myaccount_view_subscription_endpoint'
wp option delete 'woocommerce_myaccount_subscription_payment_method_endpoint'
wp option delete 'woocommerce_myaccount_subscriptions_endpoint'
wp option delete 'wc_points_rewards_redeem_points_ratio'
wp option delete '_wcpay_feature_woopay_first_party_auth'
wp option delete 'woocommerce_checkout_company_field'
wp option delete 'woocommerce_checkout_address_2_field'
wp option delete 'woocommerce_terms_page_id'
wp option delete 'woocommerce_checkout_page_id'
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
wp option delete 'trusted_ip_header'
wp option delete 'jetpack_protect_active'
wp option delete 'wpcom_public_coming_soon'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%full_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full_sync'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_full-sync-enqueue'"
wp option delete 'jetpack_plugin_api_action_links'
wp option delete 'jetpack_site_icon_url'
wp option delete 'jetpack_sync_non_blocking'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jetpack_constant_%'"
wp option delete 'jetpack_updates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jetpack_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jetpack_network_%'"
wp option delete 'jetpack_full_sync_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%immediate-send'"
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_enable_order_comments'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_multiple_purchase'"
wp option delete 'woocommerce_calc_shipping'
wp option delete 'woocommerce_enable_myaccount_registration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_previous_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_paypal_debugging_default_set'"
wp option delete 'woocommerce_paypal_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_add_to_cart_button_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_order_button_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_subscriber_role'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cancelled_role'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_accept_manual_renewals'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_turn_off_automatic_payments'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_auto_renewal_toggle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_early_renewal'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_early_renewal_via_modal'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_switching'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_apportion_recurring_price'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_apportion_sign_up_fee'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_apportion_length'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_switch_button_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sync_payments'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_prorate_synced_payments'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_days_no_fee'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_max_customer_suspensions'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_zero_initial_payment_requires_payment'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_drip_downloadable_content_on_renewal'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_retry'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_failed_scheduled_actions'"
wp option delete 'woocommerce_myaccount_view_subscriptions_endpoint'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'wcs_ignore_duplicate_siteurl_notice'
wp option delete 'wc_subscriptions_siteurl'
wp option delete 'woocommerce_tax_total_display'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active_version'"
wp option delete 'wcs_paypal_rt_enabled_accounts'
wp option delete 'wcs_paypal_credentials_error'
wp option delete 'wcs_paypal_invalid_profile_id'
wp option delete 'wcs_fatal_error_handling_ipn'
wp option delete 'wcs_fatal_error_handling_ipn_ignored'
wp option delete 'wcs_paypal_credentials_error_affected_profiles'
wp option delete 'woocommerce_anonymize_ended_subscriptions'
wp option delete 'woocommerce_erasure_request_removes_subscription_data'
wp option delete 'woocommerce_db_version'
wp option delete 'wc_subscriptions_is_upgrading'
wp option delete 'woocommerce_subscriptions_multiple_purchase'
wp option delete 'wcs_display_2_3_3_warning'
wp option delete 'wcs_upgrade_initial_total_subscription_count'
wp option delete 'woocommerce_version'
wp option delete 'wcs_1_2_upgraded_order_ids'
wp option delete 'wcs_1_4_last_upgraded_user_id'
wp option delete 'wcs_1_4_upgraded_order_ids'
wp option delete 'wcs_subscription_post_author_upgrade_is_scheduled'
wp option delete 'wcs_post_author_upgrade_other_subscriptions_to_ignore'
wp option delete 'wcs_is_large_site'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wcpay_fraud_protection_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_abtest_variation_%' OR option_name LIKE '_site_transient_abtest_variation_%'"
wp transient delete 'woopayments_referral_code'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcpay_processing_intent_%' OR option_name LIKE '_site_transient_wcpay_processing_intent_%'"
wp transient delete 'wcpay_stripe_onboarding_state'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcpay_minimum_amount_%' OR option_name LIKE '_site_transient_wcpay_minimum_amount_%'"
wp transient delete 'wcpay_bnpl_april15_successful_purchases_count'
wp transient delete 'jetpack_assumed_site_creation_date'
wp transient delete 'jetpack_idc_possible_dynamic_site_url_detected'
wp transient delete 'jetpack_idc_local'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jetpack_idc_ip_requester_%' OR option_name LIKE '_site_transient_jetpack_idc_ip_requester_%'"
wp transient delete 'jetpack_is_single_user'
wp transient delete 'jetpack_plugin_api_action_links_refresh'
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_update_%' OR option_name LIKE '_site_transient_update_%'"
wp transient delete '_wcs_admin_notices'
wp transient delete 'wcs_paypal_ipn_error_occurred'
wp transient delete 'doing_cron'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_needs_processing' OR option_name LIKE '_site_transient_%_needs_processing'"
wp transient delete 'woocommerce_admin_pes_incentive_woopayments_cache'

# Clear Cron Jobs
wp cron event delete 'validate_woopay_compatibility'
wp cron event delete 'validate_incompatible_extensions'
wp cron event delete 'woopay_restore_order_customer_id'
wp cron event delete 'jetpack_heartbeat'
wp cron event delete 'jetpack_clean_nonces'
wp cron event delete 'jetpack_sync_cron'
wp cron event delete 'jetpack_sync_full_cron'
wp cron event delete 'jetpack_sync_send_db_checksum'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_trial_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_one_time_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_trial_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prices_include_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prices_include_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prices_include_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prices_include_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paying_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcs_repaired_2_0_2_needs_failed_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcs_repaired_2_0_2_needs_failed_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcs_repaired_2_0_2_needs_failed_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcs_repaired_2_0_2_needs_failed_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paid_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_contains_synced_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_contains_synced_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_contains_synced_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_contains_synced_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_max_variation_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_max_variation_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_max_variation_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_max_variation_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_max_variation_ids_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_max_variation_ids_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_max_variation_ids_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_max_variation_ids_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schedule_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schedule_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schedule_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schedule_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schedule_trial_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schedule_trial_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schedule_trial_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schedule_trial_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schedule_next_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schedule_next_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schedule_next_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schedule_next_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schedule_cancelled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schedule_cancelled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schedule_cancelled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schedule_cancelled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schedule_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schedule_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schedule_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schedule_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schedule_payment_retry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schedule_payment_retry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schedule_payment_retry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schedule_payment_retry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_renewal_order_ids_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_renewal_order_ids_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_renewal_order_ids_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_renewal_order_ids_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_resubscribe_order_ids_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_resubscribe_order_ids_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_resubscribe_order_ids_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_resubscribe_order_ids_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_switch_order_ids_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_switch_order_ids_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_switch_order_ids_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_switch_order_ids_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_ipn_tracking_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_ipn_tracking_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_ipn_tracking_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_ipn_tracking_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_failed_sign_up_recorded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_failed_sign_up_recorded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_failed_sign_up_recorded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_failed_sign_up_recorded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_paypal_subscriber_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_paypal_subscriber_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_paypal_subscriber_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_paypal_subscriber_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_first_ipn_ignored_for_pdt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_first_ipn_ignored_for_pdt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_first_ipn_ignored_for_pdt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_first_ipn_ignored_for_pdt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_switched_paypal_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_switched_paypal_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_switched_paypal_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_switched_paypal_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_price_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_price_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_price_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_price_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_price_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_price_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_price_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_price_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_price_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_price_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_price_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_price_variation_id'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_variation_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_variation_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_variation_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_variation_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_variation_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_variation_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_variation_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_variation_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_variation_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_variation_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_variation_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_variation_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_variation_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_variation_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_variation_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_variation_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcs_repaired_2_0_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcs_repaired_2_0_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcs_repaired_2_0_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcs_repaired_2_0_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_recurring_discount_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_recurring_discount_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_recurring_discount_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_recurring_discount_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_recurring_discount_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_recurring_discount_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_recurring_discount_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_recurring_discount_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_recurring_shipping_tax_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_recurring_shipping_tax_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_recurring_shipping_tax_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_recurring_shipping_tax_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_recurring_tax_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_recurring_tax_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_recurring_tax_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_recurring_tax_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_recurring_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_recurring_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_recurring_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_recurring_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_recurring_taxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_recurring_taxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_recurring_taxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_recurring_taxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_taxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_taxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_taxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_taxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_switched_subscription_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_switched_subscription_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_switched_subscription_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_switched_subscription_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcs_2_2_7_repaired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcs_2_2_7_repaired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcs_2_2_7_repaired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcs_2_2_7_repaired'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contains_synced_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contains_synced_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contains_synced_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contains_synced_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_purchase_note'"
