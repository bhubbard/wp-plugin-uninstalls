#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'charitable_activated'
wp option delete 'charitable_notifications'
wp option delete 'charitable_version_upgraded_from'
wp option delete 'wpcharitable_activated_datetime'
wp option delete 'charitable_version_warning'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%charitable_benefactors_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'charitable_form_error_meta_%'"
wp option delete 'charitable_settings'
wp option delete 'wpc_plugin_versions'
wp option delete 'charitable_builder_onboarding'
wp option delete 'charitable_campaign_builder_templates'
wp option delete 'classic-editor-replace'
wp option delete 'charitable_third_party_warnings'
wp option delete 'charitable_dashboard_notifications'
wp option delete 'wpchar_telemetry_uuid'
wp option delete 'charitable_usage_tracking'
wp option delete 'charitable_connect_token'
wp option delete 'charitable_connect'
wp option delete 'charitable_connect_complete'
wp option delete 'charitable_connect_completed'
wp option delete 'charitable_square_connection_error_notice'
wp option delete 'aioseo_activation_redirect'
wp option delete 'wp_mail_smtp_activation_prevent_redirect'
wp option delete 'charitable_started_onboarding'
wp option delete 'charitable_growth_tool_notices'
wp option delete 'charitable_lite_settings_upgrade'
wp option delete 'charitable_lite_reports_upgrade'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'charitable_recommended_plugins_%'"
wp option delete 'charitable_campaigns_first_created'
wp option delete 'charitable_cache_cleared'
wp option delete 'charitable_activate_pro'
wp option delete 'charitable_activation_redirect'
wp option delete 'charitable_setup_meta'
wp option delete 'charitable_setup_campaign_created'
wp option delete 'charitable_setup_plugins'
wp option delete 'charitable_setup_features'
wp option delete 'charitable_setup_license_key'
wp option delete 'charitable_setup_payment_methods'
wp option delete 'charitable_setup_campaign'
wp option delete 'charitable_email_signup'
wp option delete 'charitable_ss_complete'
wp option delete 'sbi_plugin_do_activation_redirect'
wp option delete 'cff_plugin_do_activation_redirect'
wp option delete 'trustpulse_api_plugin_do_activation_redirect'
wp option delete 'duplicator_redirect_to_welcome'
wp option delete 'automator_reporting'
wp option delete 'charitable_doing_upgrade'
wp option delete 'charitable_onboarding_checklist'
wp option delete 'charitable_usage_tracking_last_checkin'
wp option delete 'charitable_tracking_last_checkin'
wp option delete 'charitable_splash_version'
wp option delete 'charitable_square_mode_connection_warning'
wp option delete 'charitable_splash_data_version'
wp option delete 'charitable_upgrade_log'
wp option delete 'charitable_tools'
wp option delete 'wpc_plugin_version'
wp option delete 'wpc_edd_sl_failed_plugin_versions'
wp option delete 'active_sitewide_plugins'
wp option delete 'charitable_upgraded_from'
wp option delete 'charitable_first_campaign'
wp option delete 'charitable_first_donation'
wp option delete 'charitable_usage_tracking_config'
wp option delete 'charitable_recommended_plugins_viewed'
wp option delete 'charitable_recommended_plugins_clicked'
wp option delete 'charitable_recommended_plugins_installed'
wp option delete 'charitable_recommended_plugins_activated'
wp option delete 'charitable_dashboard_enhance_views'
wp option delete 'charitable_site_tracking_aid'
wp option delete 'charitable_using_stripe_connect'
wp option delete 'polylang'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'charitable_square_location_currency_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'charitable_square_location_id_%'"
wp option delete '_charitable_square_locations_test'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'charitable_square_aes_key_%'"
wp option delete 'charitable_square_location_id_test'
wp option delete 'charitable_square_location_id_live'
wp option delete 'charitable_square_connections'
wp option delete 'charitable_using_square_connect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcharitable_square_failed_token_renewal_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcharitable_square_token_refreshed_%'"
wp option delete 'charitable_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%charitable_campaign_donations_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%charitable_donors_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%charitable_donormeta_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%charitable_donation_activities_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%charitable_campaign_activities_db_version'"
wp option delete 'charitable_version'
wp option delete 'charitable_skipped_donations_with_empty_donor_id'
wp option delete 'charitable_stripe_upgrade_log'
wp option delete 'charitable_crypto_secret_key'

# Delete Transients
wp transient delete 'charitable_install'
wp transient delete 'charitable_activation_redirect'
wp transient delete '_charitable_addons'
wp transient delete '_charitable_plugin_versions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_charitable_campaign_preview_%' OR option_name LIKE '_site_transient_charitable_campaign_preview_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_charitable_allowed_campaign_creators_by_%' OR option_name LIKE '_site_transient_charitable_allowed_campaign_creators_by_%'"
wp transient delete 'update_plugins'
wp transient delete 'charitable_charitablelitetopro_banner'
wp transient delete 'charitable_expiringlicense_banner'
wp transient delete 'charitable_expiredlicense_banner'
wp transient delete 'charitable_charitable_ltp_lb_list_banner'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_banner' OR option_name LIKE '_site_transient_%_banner'"
wp transient delete 'charitable_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_onboarding' OR option_name LIKE '_site_transient_%_onboarding'"
wp transient delete 'charitable_ss_onboarding'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_notice' OR option_name LIKE '_site_transient_%_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_list_banner' OR option_name LIKE '_site_transient_%_list_banner'"
wp transient delete 'charitable_dashboard_notices'
wp transient delete 'charitable_donation_security_checks'
wp transient delete 'charitable_custom_styles'
wp transient delete 'wpch_dashboard_report_html_donation_axis'
wp transient delete 'wpch_dashboard_report_html_date_axis'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpch_dashboard_report_html_%' OR option_name LIKE '_site_transient_wpch_dashboard_report_html_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpch_dashboard_report_html_donation_axis_%' OR option_name LIKE '_site_transient_wpch_dashboard_report_html_donation_axis_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpch_dashboard_report_html_date_axis_%' OR option_name LIKE '_site_transient_wpch_dashboard_report_html_date_axis_%'"
wp transient delete 'wpch_dashboard_data_args'
wp transient delete 'charitable_blog_posts_cache'
wp transient delete 'charitable_autoshow_plugin_notifications'
wp transient delete '_monsterinsights_activation_redirect'
wp transient delete '_exactmetrics_activation_redirect'
wp transient delete 'wp_mail_smtp_activation_redirect'
wp transient delete '_rafflepress_welcome_screen_activation_redirect'
wp transient delete '_seedprod_welcome_screen_activation_redirect'
wp transient delete 'searchwp_live_search_activation_redirect'
wp transient delete 'pushengage_activation_redirect'
wp transient delete 'charitable-report-advanced-args'
wp transient delete 'charitable-report-donor-args'
wp transient delete 'charitable-report-overview-args'
wp transient delete 'charitable-report-activity-args'
wp transient delete 'charitable_security-recommendation_banner'
wp transient delete '_charitable_legacy_license_info'
wp transient delete 'charitable_splash_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_basic' OR option_name LIKE '_site_transient_%_basic'"
wp transient delete 'charitable_tools_misc_processed'
wp transient delete 'charitable_user_dashboard_objects'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_charitable_donation_%' OR option_name LIKE '_site_transient_charitable_donation_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_charitable_square_active_locations_%' OR option_name LIKE '_site_transient_charitable_square_active_locations_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_charitable_square_account_%' OR option_name LIKE '_site_transient_charitable_square_account_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_charitable_square_merchant_name_%' OR option_name LIKE '_site_transient_charitable_square_merchant_name_%'"

# Clear Cron Jobs
wp cron event delete 'charitable_send_deferred_email'
wp cron event delete 'charitable_usage_tracking_cron'
wp cron event delete 'charitable_daily_scheduled_events'
wp cron event delete 'charitable_daily_error_log_cleanup'
wp cron event delete 'charitable_square_token_renewal'
wp cron event delete 'wp_session_garbage_collection'
wp cron event delete 'charitable_square_refresh_connection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donation_gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donation_gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donation_gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donation_gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donation_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donation_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donation_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donation_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_manually_edited'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_manually_edited'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_manually_edited'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_manually_edited'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'test_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'test_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'test_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'test_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gateway_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gateway_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gateway_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gateway_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gateway_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gateway_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gateway_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gateway_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gateway_transaction_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gateway_transaction_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gateway_transaction_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gateway_transaction_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_receipt_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_receipt_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_receipt_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_receipt_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gateway_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gateway_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gateway_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gateway_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gateway_plan_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gateway_plan_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gateway_plan_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gateway_plan_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_erased'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_erased'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_erased'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_erased'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_suggested_donations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_suggested_donations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_suggested_donations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_suggested_donations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_suggested_donations_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_suggested_donations_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_suggested_donations_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_suggested_donations_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_donate_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_donate_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_donate_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_donate_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'campaign_settings_v2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'campaign_settings_v2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'campaign_settings_v2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'campaign_settings_v2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'campaign_admin_campaign_congrats_wizard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'campaign_admin_campaign_congrats_wizard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'campaign_admin_campaign_congrats_wizard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'campaign_admin_campaign_congrats_wizard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'campaign_admin_campaign_embed_wizard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'campaign_admin_campaign_embed_wizard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'campaign_admin_campaign_embed_wizard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'campaign_admin_campaign_embed_wizard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_goal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_goal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_goal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_goal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'charitable-pointer-slug-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'charitable-pointer-slug-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'charitable-pointer-slug-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'charitable-pointer-slug-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_imported_campaign_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_imported_campaign_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_imported_campaign_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_imported_campaign_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_imported_donation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_imported_donation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_imported_donation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_imported_donation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'charitable_dismissed_partners'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'charitable_dismissed_partners'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'charitable_dismissed_partners'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'charitable_dismissed_partners'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'charitable_dismissed_addons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'charitable_dismissed_addons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'charitable_dismissed_addons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'charitable_dismissed_addons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_allow_custom_donations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_allow_custom_donations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_allow_custom_donations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_allow_custom_donations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_minimum_donation_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_minimum_donation_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_minimum_donation_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_minimum_donation_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_campaign_hide_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_campaign_hide_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_campaign_hide_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_campaign_hide_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donation_refund'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donation_refund'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donation_refund'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donation_refund'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_charitable_email_verification_email_send_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_charitable_email_verification_email_send_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_charitable_email_verification_email_send_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_charitable_email_verification_email_send_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_refunded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_refunded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_refunded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_refunded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_square_subscription_meta_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_square_subscription_meta_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_square_subscription_meta_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_square_subscription_meta_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_square_subscription_donation_first_donation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_square_subscription_donation_first_donation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_square_subscription_donation_first_donation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_square_subscription_donation_first_donation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_square_cancelled_to_be_confirmed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_square_cancelled_to_be_confirmed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_square_cancelled_to_be_confirmed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_square_cancelled_to_be_confirmed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_refunded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_refunded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_refunded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_refunded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_refund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_refund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_refund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_refund_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_hide_percent_raised'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_hide_percent_raised'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_hide_percent_raised'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_hide_percent_raised'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_hide_number_of_donors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_hide_number_of_donors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_hide_number_of_donors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_hide_number_of_donors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_hide_amount_donated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_hide_amount_donated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_hide_amount_donated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_hide_amount_donated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_hide_time_remaining'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_hide_time_remaining'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_hide_time_remaining'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_hide_time_remaining'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_donation_plans'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_donation_plans'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_donation_plans'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_donation_plans'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_square_payment_intent_failure_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_square_payment_intent_failure_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_square_payment_intent_failure_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_square_payment_intent_failure_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stripe_donation_plans'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stripe_donation_plans'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stripe_donation_plans'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stripe_donation_plans'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stripe_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stripe_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stripe_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stripe_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_campaign_stripe_connect_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_campaign_stripe_connect_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_campaign_stripe_connect_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_campaign_stripe_connect_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_payment_intent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_payment_intent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_payment_intent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_payment_intent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_application_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_application_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_application_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_application_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_application_fee_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_application_fee_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_application_fee_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_application_fee_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_transfer_to_connected_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_transfer_to_connected_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_transfer_to_connected_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_transfer_to_connected_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stripe_payment_intent_failure_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stripe_payment_intent_failure_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stripe_payment_intent_failure_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stripe_payment_intent_failure_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'consent_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'consent_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'consent_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'consent_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_charitable_user_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_charitable_user_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_charitable_user_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_charitable_user_verified'"
