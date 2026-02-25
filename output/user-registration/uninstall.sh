#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'user_registration_installation_date'
wp option delete 'user_registration_payment_currency'
wp option delete 'urm_is_new_installation'
wp option delete 'ur_membership_order'
wp option delete 'user_registration_thank_you_page_id'
wp option delete 'ur_membership_payment_gateways'
wp option delete 'user_registration_paypal_enabled'
wp option delete 'user_registration_stripe_enabled'
wp option delete 'user_registration_authorize-net_enabled'
wp option delete 'user_registration_mollie_enabled'
wp option delete 'user_registration_bank_enabled'
wp option delete 'user_registration_global_paypal_mode'
wp option delete 'user_registration_global_paypal_email_address'
wp option delete 'user_registration_global_paypal_client_id'
wp option delete 'user_registration_global_paypal_client_secret'
wp option delete 'user_registration_stripe_test_mode'
wp option delete 'user_registration_global_bank_details'
wp option delete 'user_registration_content_restriction_message'
wp option delete 'urcr_migrated_membership_ids'
wp option delete 'user_registration_user_favorite_templates'
wp option delete 'user_registration_onboarding_skipped_step'
wp option delete 'urm_onboarding_current_step'
wp option delete 'user_registration_enabled_features'
wp option delete 'urm_onboarding_membership_type'
wp option delete 'user_registration_first_time_activation_flag'
wp option delete 'user_registration_onboarding_skipped'
wp option delete 'user_registration_general_setting_login_options'
wp option delete 'user_registration_form_setting_default_user_role'
wp option delete 'user_registration_default_form_page_id'
wp option delete 'user_registration_allow_usage_tracking'
wp option delete 'user_registration_updates_admin_email'
wp option delete 'user_registration_membership_installed_flag'
wp option delete 'urm_initial_registration_type'
wp option delete 'user_registration_registration_form'
wp option delete 'user_registration_member_registration_page_id'
wp option delete 'user_registration_registration_page_id'
wp option delete 'user_registration_login_options_prevent_core_login'
wp option delete 'user_registration_login_options_login_redirect_url'
wp option delete 'ur_membership_default_membership_field_name'
wp option delete 'urm_onboarding_membership_ids'
wp option delete 'user_registration_membership_pricing_page_id'
wp option delete 'user_registration_global_paypal_test_email_address'
wp option delete 'user_registration_global_paypal_test_client_id'
wp option delete 'user_registration_global_paypal_test_client_secret'
wp option delete 'user_registration_global_paypal_live_email_address'
wp option delete 'user_registration_global_paypal_live_admin_email'
wp option delete 'user_registration_global_paypal_live_client_id'
wp option delete 'user_registration_global_paypal_live_client_secret'
wp option delete 'user_registration_stripe_test_publishable_key'
wp option delete 'user_registration_stripe_test_secret_key'
wp option delete 'user_registration_stripe_live_publishable_key'
wp option delete 'user_registration_stripe_live_secret_key'
wp option delete 'urm_bank_connection_status'
wp option delete 'urm_paypal_connection_status'
wp option delete 'urm_stripe_connection_status'
wp option delete 'urm_enabled_payment_gateways'
wp option delete 'user_registration_login_page_id'
wp option delete 'user_registration_myaccount_page_id'
wp option delete 'urm_onboarding_completed_at'
wp option delete 'user_registration_onboarding_skipped_steps'
wp option delete 'urm_group_module_installation_flag'
wp option delete 'user_registration_content_restriction_enable'
wp option delete 'user-registration_license_key'
wp option delete 'user-registration_license_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_date_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'user_registration_captcha_setting_recaptcha_enable_%'"
wp option delete 'user_registration_enable_email_confirmation'
wp option delete 'user_registration_global_paypal_cancel_url'
wp option delete 'user_registration_global_paypal_return_url'
wp option delete 'global_paypal_setting_migration'
wp option delete 'membership_migration_finished'
wp option delete 'user_registration_version'
wp option delete 'ur_translations_migration_done'
wp option delete 'user_registration_general_setting_disabled_user_roles'
wp option delete 'user_registration_admin_footer_text_rated'
wp option delete 'user_registration_users_listing_viewed'
wp option delete 'user_registration_activated'
wp option delete 'user_registration_updated_at'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_dismissed'"
wp option delete 'ur_login_page_processed'
wp option delete 'user_registration_admin_notices'
wp option delete 'user_registration_install_pages_notice_removed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_dismissed_temporarily'"
wp option delete 'user_registration_php_deprecated_notice_last_prompt_date'
wp option delete 'user_registration_php_deprecated_notice_prompt_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'user_registration_admin_notice_%'"
wp option delete 'user_registration_db_version'
wp option delete 'user_registration_captcha_setting_recaptcha_version'
wp option delete 'user_registration_successful_form_submission_message_manual_registation'
wp option delete 'user_registration_successful_form_submission_message_admin_approval'
wp option delete 'user_registration_successful_form_submission_message_email_confirmation'
wp option delete 'user_registration_form_submission_error_message_recaptcha'
wp option delete 'user_registration_form_submission_error_message_required_fields'
wp option delete 'user_registration_form_submission_error_message_email'
wp option delete 'user_registration_form_submission_error_message_website_URL'
wp option delete 'user_registration_form_submission_error_message_number'
wp option delete 'user_registration_form_submission_error_message_confirm_password'
wp option delete 'user_registration_form_submission_error_message_min_words'
wp option delete 'user_registration_form_submission_error_message_phone_number'
wp option delete 'user_registration_form_submission_error_message_disallow_username_character'
wp option delete 'user_registration_form_submission_error_message_confirm_email'
wp option delete 'user_registration_disable_profile_picture'
wp option delete 'user_registration_captcha_setting_invisible_recaptcha_v2'
wp option delete 'user_registration_captcha_setting_recaptcha_site_key'
wp option delete 'user_registration_captcha_setting_recaptcha_site_secret'
wp option delete 'user_registration_captcha_setting_recaptcha_invisible_site_key'
wp option delete 'user_registration_captcha_setting_recaptcha_invisible_site_secret'
wp option delete 'user_registration_captcha_setting_recaptcha_site_key_v3'
wp option delete 'user_registration_captcha_setting_recaptcha_site_secret_v3'
wp option delete 'user_registration_captcha_setting_recaptcha_threshold_score_v3'
wp option delete 'user_registration_captcha_setting_recaptcha_site_key_hcaptcha'
wp option delete 'user_registration_captcha_setting_recaptcha_site_secret_hcaptcha'
wp option delete 'user_registration_captcha_setting_recaptcha_site_key_cloudflare'
wp option delete 'user_registration_captcha_setting_recaptcha_site_secret_cloudflare'
wp option delete 'user_registration_captcha_setting_recaptcha_enable_v2'
wp option delete 'user_registration_captcha_setting_recaptcha_enable_v3'
wp option delete 'user_registration_captcha_setting_recaptcha_enable_hCaptcha'
wp option delete 'user_registration_captcha_setting_recaptcha_enable_cloudflare'
wp option delete 'user_registration_email_setting_disable_email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'user_registration_enable_%'"
wp option delete 'urcr_global_rule_id'
wp option delete 'user_registration_global_paypal_test_admin_email'
wp option delete 'urm_global_paypal_settings_migrated_'
wp option delete 'user_registration_allow_usage_notice_shown'
wp option delete 'user_registration_myaccount_edit_profile_endpoint'
wp option delete 'user_registration_email_from_name'
wp option delete 'user_registration_email_from_address'
wp option delete 'user_registration_successful_test_mail'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_updated_connection_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connection_status'"
wp option delete 'user_registration_membership_field_added_to_default_form'
wp option delete 'user_registration_default_wordpress_login_skipped'
wp option delete 'user_registration_spam_protection_skipped'
wp option delete 'user_registration_payment_setup_skipped'
wp option delete 'user_registration_membership_field_skipped'
wp option delete 'user_registration_lost_password_page_id'
wp option delete 'urm_enable_no_conflict'
wp option delete 'user_registration_successful_email_verified_message'
wp option delete 'user_registration_pro_email_verified_admin_approval_await_message'
wp option delete 'user_registration_email_confirmation_subject'
wp option delete 'user_registration_email_confirmation'
wp option delete 'user_registration_awaiting_admin_approval_email_subject'
wp option delete 'user_registration_awaiting_admin_approval_email'
wp option delete 'user_registration_registration_denied_email_subject'
wp option delete 'user_registration_registration_denied_email'
wp option delete 'user_registration_successfully_registered_email_subject'
wp option delete 'user_registration_successfully_registered_email'
wp option delete 'user_registration_info_ur_email_send_failed_notice_dismissed_temporarily'
wp option delete 'user_registration_info_ur_email_send_failed_notice_dismissed'
wp option delete 'user_registration_approval_link_email_receipents'
wp option delete 'user_registration_approval_link_email_subject'
wp option delete 'user_registration_approval_link_email'
wp option delete 'user_registration_admin_email_receipents'
wp option delete 'user_registration_admin_email_subject'
wp option delete 'user_registration_admin_email'
wp option delete 'user_registration_edit_profile_email_receipents'
wp option delete 'user_registration_profile_details_changed_email_subject'
wp option delete 'user_registration_profile_details_changed_email'
wp option delete 'user_registration_profile_details_updated_email_subject'
wp option delete 'user_registration_profile_details_Updated_email'
wp option delete 'user_registration_registration_pending_email_subject'
wp option delete 'user_registration_registration_pending_email'
wp option delete 'user_registration_reset_password_email_subject'
wp option delete 'user_registration_reset_password_email'
wp option delete 'user_registration_confirm_email_address_change_subject'
wp option delete 'user_registration_confirm_email_address_change_email'
wp option delete 'user_registration_confirm_email_address_change_email_subject'
wp option delete 'user_registration_tax_regions_and_rates'
wp option delete 'user_registration_tax_calculation_during_checkout'
wp option delete 'user_registration_login_options_configured_captcha_type'
wp option delete 'user_registration_style_setting_primary_color'
wp option delete 'user_registration_style_setting_button_text_colors'
wp option delete 'user_registration_style_setting_button_background_colors'
wp option delete 'user_registration_migration_version'
wp option delete 'user_registration_default_membership_form_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp option delete 'user_registration_failed_installing_extensions_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_key_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_errors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_active'"
wp option delete 'user_registration_queue_flush_rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_content'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'user_registration_pro_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'user_registration_%'"
wp option delete 'user_registration_myaccount_change_password_endpoint'
wp option delete 'user_registration_myaccount_lost_password_endpoint'
wp option delete 'user_registration_logout_endpoint'
wp option delete 'user_registration_reset_password_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'urm_%'"
wp option delete 'ur_login_ajax_submission'
wp option delete 'user_registration_pro_pending_payment_error_message'
wp option delete 'user_registration_my_account_layout'
wp option delete 'user_registration_login_options_enable_custom_redirect'
wp option delete 'user_registration_login_options_redirect_after_login'
wp option delete 'user_registration_login_options_after_login_redirect_external_url'
wp option delete 'user_registration_login_options_after_login_redirect_page'
wp option delete 'user_registration_login_options_redirect_after_logout'
wp option delete 'user_registration_login_options_after_logout_redirect_external_url'
wp option delete 'user_registration_login_options_after_logout_redirect_page'
wp option delete 'user_registration_renewal_behaviour'
wp option delete 'user_registration_renewal_type'
wp option delete 'user_registration_general_setting_lost_password_page'
wp option delete 'user_registration_form_template'
wp option delete 'user_registration_form_setting_enable_strong_password'
wp option delete 'user_registration_form_setting_minimum_password_strength'
wp option delete 'user_registration_form_setting_no_repeat_chars'
wp option delete 'user_registration_general_setting_redirect_options'
wp option delete 'user_registration_captcha_setting_recaptcha_cloudflare_theme'
wp option delete 'ur_profile_picture_migrated'
wp option delete 'ur_size_to_limit_length_migrated'
wp option delete 'ur_secret_key'
wp option delete 'ur_secret_iv'
wp option delete 'user_registration_message_username_required'
wp option delete 'user_registration_message_empty_password'
wp option delete 'user_registration_message_invalid_username'
wp option delete 'user_registration_message_unknown_email'
wp option delete 'user_registration_message_pending_approval'
wp option delete 'user_registration_message_denied_account'
wp option delete 'user_registration_message_incorrect_password'
wp option delete 'user_registration_pro_role_based_redirection'
wp option delete 'ur_pro_settings_redirection_after_login'
wp option delete 'user_registration_general_setting_login_options_with'
wp option delete 'urm_enable_no_conflict_migration_completed'
wp option delete 'user_registration_info_ur_spam_users_detected_notice_dismissed_temporarily'
wp option delete 'user_registration_ur_spam_users_detected_notice_dismissed'
wp option delete 'rsssl_options'
wp option delete 'ur_sms_integration_accounts'
wp option delete 'ur_activecampaign_accounts'
wp option delete 'ur_mailerlite_accounts'
wp option delete 'ur_klaviyo_accounts'
wp option delete 'ur_mailchimp_accounts'
wp option delete 'ur_zapier_accounts'
wp option delete 'user_registration_integrations_mailpoet_connection'
wp option delete 'ur_convertkit_accounts'
wp option delete 'user_registration_integrations_brevo_connection'
wp option delete 'ur_salesforce_accounts'
wp option delete 'ur_login_page_redirect_sync_migrated'
wp option delete 'user_registration_captcha_setting_v2_connection_status'
wp option delete 'urmc_mailchimp_settings'
wp option delete 'user_registration_myaccount_edit_account_endpoint'
wp option delete 'ur_review_notice_dismissed'
wp option delete 'user_registration_review_notice_dismissed'
wp option delete 'user_registration_integration_setting_recaptcha_version'
wp option delete 'user_registration_integration_setting_invisible_recaptcha_v2'
wp option delete 'user_registration_integration_setting_recaptcha_invisible_site_key'
wp option delete 'user_registration_integration_setting_recaptcha_invisible_site_secret'
wp option delete 'user_registration_integration_setting_recaptcha_site_key'
wp option delete 'user_registration_integration_setting_recaptcha_site_secret'
wp option delete 'user_registration_integration_setting_recaptcha_site_key_v3'
wp option delete 'user_registration_integration_setting_recaptcha_site_secret_v3'
wp option delete 'user_registration_integration_setting_recaptcha_threshold_score_v3'
wp option delete 'user_registration_integration_setting_recaptcha_site_key_hcaptcha'
wp option delete 'user_registration_integration_setting_recaptcha_site_secret_hcaptcha'
wp option delete 'user_registration_enable_pro_auto_generated_password_email'
wp option delete 'user_registration_enable_auto_generated_password_email'
wp option delete 'user_registration_quick_setup_completed'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'urcr_migrated_post_page_ids'
wp option delete 'user_registration_content_restriction_whole_site_access'
wp option delete 'urcr_global_restriction_migrated'
wp option delete 'urcr_post_page_restrictions_migrated'
wp option delete 'urcr_memberships_migrated'
wp option delete 'elementor_element_cache_ttl'
wp option delete 'user_registration_content_restriction_allow_to_roles'
wp option delete 'user_registration_content_restriction_allow_to_memberships'
wp option delete 'user_registration_content_restriction_allow_access_to'
wp option delete 'urcr_is_global'
wp option delete 'user_registration_payment_retry_enabled'
wp option delete 'user_registration_payment_retry_count'
wp option delete 'user_registration_payment_retry_interval'
wp option delete 'user_registration_enable_successfully_registered_email'
wp option delete 'user_registration_payment_success_email_subject'
wp option delete 'user_registration_payment_success_email'
wp option delete 'user_registration_enable_payment_success_email'
wp option delete 'user_registration_payment_retry_failed_email'
wp option delete 'user_registration_payment_retry_cancel_email'
wp option delete 'user_registration_enable_payment_approval_email'
wp option delete 'user_registration_membership_cancellation_user_email_subject'
wp option delete 'user_registration_membership_cancellation_admin_email_message'
wp option delete 'user_registration_enable_membership_cancellation_admin_email'
wp option delete 'user_registration_membership_cancellation_admin_email_subject'
wp option delete 'user_registration_membership_renewal_reminder_user_email_subject'
wp option delete 'user_registration_membership_renewal_reminder_user_email_message'
wp option delete 'user_registration_membership_enable_renewal_reminder_user_email'
wp option delete 'user_registration_membership_expiring_soon_user_email_subject'
wp option delete 'user_registration_membership_expiring_soon_user_email_message'
wp option delete 'user_registration_membership_enable_expiring_soon_user_email'
wp option delete 'user_registration_membership_ended_user_email_subject'
wp option delete 'user_registration_membership_ended_user_email_message'
wp option delete 'user_registration_membership_enable_membership_ended_user_email'
wp option delete 'urm_bank_updated_connection_status'
wp option delete 'user_registration_stripe_webhook_secret'
wp option delete 'user_registration_stripe_webhook_secret_test'
wp option delete 'user_registration_stripe_webhook_secret_live'
wp option delete 'urm_paypal_updated_connection_status'
wp option delete 'urm_stripe_updated_connection_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'user_registration_stripe_webhook_secret_%'"
wp option delete 'user_registration_membership_renewal_reminder_days_before'
wp option delete 'user_registration_membership_renewal_reminder_period'
wp option delete 'user_registration_membership_expiring_soon_days_before'
wp option delete 'user_registration_membership_expiring_soon_period'
wp option delete 'user_registration_general_setting_uninstall_option'
wp option delete 'ur_membership_db_version'
wp option delete 'user_registration_switch_local_currency_option'
wp option delete 'user_registration_local_currency_by_geolocation'
wp option delete 'ur_payment_gateways'
wp option delete 'user_registration_content_drip_global_message'
wp option delete 'user_registration_login_options_form_template'
wp option delete 'user_registration_label_username_or_email'
wp option delete 'user_registration_label_password'
wp option delete 'user_registration_label_remember_me'
wp option delete 'user_registration_label_login'
wp option delete 'user_registration_label_lost_your_password'
wp option delete 'user_registration_placeholder_username_or_email'
wp option delete 'user_registration_placeholder_password'
wp option delete 'user_registration_general_setting_login_form_title'
wp option delete 'user_registration_general_setting_login_form_desc'
wp option delete 'user_registration_general_setting_registration_url_options'
wp option delete 'user_registration_general_setting_registration_label'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag'"
wp option delete 'themeGrill_sdk_notifications'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"

# Delete Transients
wp transient delete 'user_registration_templates_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ur_addons_section_%' OR option_name LIKE '_site_transient_ur_addons_section_%'"
wp transient delete 'ur_template_section_list'
wp transient delete 'urm_users_not_from_urm_forms'
wp transient delete '_ur_activation_redirect'
wp transient delete 'update_plugins'
wp transient delete 'ur_pro_license_plan'
wp transient delete 'user_registration_mail_send_failed_count'
wp transient delete 'ur_password_resetted_flag'
wp transient delete 'ur_installing'
wp transient delete 'user_registration_pro_activated'
wp transient delete 'ur_spam_users_detected_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'user_registration_free_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_plugin_info_%' OR option_name LIKE '_site_transient_ti_plugin_info_%'"
wp transient delete 'themegrill_sdk_cache_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_warning_rollback' OR option_name LIKE '_site_transient_%_warning_rollback'"
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tg_sdk_pause_%' OR option_name LIKE '_site_transient_tg_sdk_pause_%'"

# Clear Cron Jobs
wp cron event delete 'user_registration_flush_rewrite_rules'
wp cron event delete 'user_registration_usage_stats_scheduled_events'
wp cron event delete 'urm_daily_membership_renewal_check'
wp cron event delete 'urm_daily_membership_expiring_soon_check'
wp cron event delete 'urm_daily_membership_ended_check'
wp cron event delete 'urm_run_delayed_subscription'
wp cron event delete 'urm_daily_membership_expiration_check'
wp cron event delete 'urm_daily_payment_retry_check'
wp cron event delete 'user_registration_cleanup_logs'
wp cron event delete 'user_registration_cleanup_sessions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_confirm_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_confirm_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_confirm_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_confirm_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_membership_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_membership_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_membership_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_membership_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urcr_rule_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urcr_rule_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urcr_rule_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urcr_rule_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urcr_membership_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urcr_membership_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urcr_membership_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urcr_membership_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_membership'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_membership'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_membership'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_membership'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_team_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_team_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_team_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_team_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_team_leader_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_team_leader_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_team_leader_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_team_leader_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_form_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_form_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_form_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_form_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ur_membership_access_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ur_membership_access_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ur_membership_access_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ur_membership_access_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urcr_meta_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urcr_meta_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urcr_meta_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urcr_meta_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user-registration_form_embed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user-registration_form_embed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user-registration_form_embed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user-registration_form_embed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_profile_pic_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_profile_pic_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_profile_pic_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_profile_pic_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_form_row_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_form_row_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_form_row_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_form_row_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_form_row_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_form_row_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_form_row_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_form_row_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_confirm_email_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_confirm_email_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_confirm_email_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_confirm_email_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_admin_approval_after_email_confirmation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_admin_approval_after_email_confirmation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_admin_approval_after_email_confirmation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_admin_approval_after_email_confirmation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_login_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_login_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_login_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_login_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_first_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_first_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_first_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_first_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_enable_paypal_standard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_enable_paypal_standard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_enable_paypal_standard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_enable_paypal_standard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_override_paypal_global_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_override_paypal_global_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_override_paypal_global_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_override_paypal_global_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urmg_memberships'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urmg_memberships'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urmg_memberships'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urmg_memberships'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_auto_enable_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_auto_enable_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_auto_enable_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_auto_enable_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_disable_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_disable_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_disable_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_disable_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_registration_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_registration_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_registration_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_registration_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'user_registration_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'user_registration_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'user_registration_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'user_registration_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_invoices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_invoices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_invoices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_invoices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_enable_theme_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_enable_theme_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_enable_theme_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_enable_theme_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_confirm_approval_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_confirm_approval_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_confirm_approval_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_confirm_approval_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_confirm_denial_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_confirm_denial_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_confirm_denial_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_confirm_denial_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_email_confirm_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_email_confirm_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_email_confirm_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_email_confirm_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_pending_email_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_pending_email_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_pending_email_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_pending_email_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_pending_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_pending_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_pending_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_pending_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_social_connect_bypass_current_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_social_connect_bypass_current_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_social_connect_bypass_current_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_social_connect_bypass_current_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_registered_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_registered_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_registered_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_registered_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__pending_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__pending_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__pending_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__pending_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_user_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_imported_form_template_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_imported_form_template_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_imported_form_template_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_imported_form_template_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urmg_default_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urmg_default_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urmg_default_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urmg_default_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_profile_updated_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_profile_updated_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_profile_updated_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_profile_updated_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_single_item_payment_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_single_item_payment_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_single_item_payment_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_single_item_payment_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_account_deletion_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_account_deletion_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_account_deletion_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_account_deletion_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_membership_cancellation_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_membership_cancellation_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_membership_cancellation_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_membership_cancellation_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_is_user_upgraded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_is_user_upgraded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_is_user_upgraded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_is_user_upgraded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_next_subscription_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_next_subscription_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_next_subscription_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_next_subscription_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_user_just_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_user_just_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_user_just_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_user_just_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_total_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_total_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_total_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_total_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_paypal_subscription_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_paypal_subscription_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_paypal_subscription_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_paypal_subscription_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_paypal_subscription_plan_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_paypal_subscription_plan_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_paypal_subscription_plan_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_paypal_subscription_plan_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_subscription_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_subscription_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_subscription_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_subscription_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_subscription_plan_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_subscription_plan_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_subscription_plan_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_subscription_plan_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_cancel_sub'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_cancel_sub'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_cancel_sub'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_cancel_sub'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_subscription_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_subscription_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_subscription_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_subscription_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_next_billing_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_next_billing_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_next_billing_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_next_billing_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_paypal_interval_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_paypal_interval_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_paypal_interval_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_paypal_interval_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_paypal_recurring_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_paypal_recurring_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_paypal_recurring_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_paypal_recurring_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_product_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_product_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_product_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_product_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_recipient'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_recipient'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_recipient'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_recipient'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_cart_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_cart_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_cart_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_cart_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_coupon_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_coupon_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_coupon_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_coupon_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_profile_pic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_profile_pic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_profile_pic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_profile_pic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urcr_is_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urcr_is_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urcr_is_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urcr_is_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_user_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_user_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_user_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_user_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_user_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_user_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_user_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_user_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_user_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_user_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_user_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_user_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_user_nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_user_nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_user_nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_user_nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_pic_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_pic_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_pic_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_pic_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_profile_pic_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_profile_pic_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_profile_pic_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_profile_pic_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_form_setting_redirect_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_form_setting_redirect_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_form_setting_redirect_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_form_setting_redirect_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_form_setting_redirect_after_registration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_form_setting_redirect_after_registration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_form_setting_redirect_after_registration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_form_setting_redirect_after_registration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urcr_meta_override_global_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urcr_meta_override_global_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urcr_meta_override_global_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urcr_meta_override_global_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urcr_migrated_rule_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urcr_migrated_rule_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urcr_migrated_rule_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urcr_migrated_rule_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urcr_allow_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urcr_allow_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urcr_allow_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urcr_allow_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urcr_meta_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urcr_meta_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urcr_meta_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urcr_meta_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urcr_meta_memberships'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urcr_meta_memberships'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urcr_meta_memberships'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urcr_meta_memberships'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urcr_meta_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urcr_meta_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urcr_meta_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urcr_meta_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_profile_completeness_completed_profile_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_profile_completeness_completed_profile_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_profile_completeness_completed_profile_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_profile_completeness_completed_profile_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_membership_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_membership_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_membership_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_membership_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_member_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_member_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_member_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_member_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urcr_is_global'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urcr_is_global'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urcr_is_global'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urcr_is_global'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_membership_process'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_membership_process'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_membership_process'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_membership_process'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_access_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_access_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_access_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_access_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_previous_subscription_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_previous_subscription_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_previous_subscription_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_previous_subscription_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_previous_order_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_previous_order_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_previous_order_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_previous_order_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_membership_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_membership_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_membership_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_membership_expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'urm_form_group_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'urm_form_group_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'urm_form_group_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'urm_form_group_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_coupon_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_coupon_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_coupon_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_coupon_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_coupon_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_coupon_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_coupon_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_coupon_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urmg_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urmg_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urmg_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urmg_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_team_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_team_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_team_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_team_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_tier_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_tier_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_tier_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_tier_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_team_seats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_team_seats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_team_seats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_team_seats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_used_seats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_used_seats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_used_seats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_used_seats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_member_emails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_member_emails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_member_emails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_member_emails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_paypal_verification_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_paypal_verification_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_paypal_verification_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_paypal_verification_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_is_payment_retrying'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_is_payment_retrying'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_is_payment_retrying'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_is_payment_retrying'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_billing_reminder_sent_for_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_billing_reminder_sent_for_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_billing_reminder_sent_for_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_billing_reminder_sent_for_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_is_member_renewing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_is_member_renewing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_is_member_renewing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_is_member_renewing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_last_renewed_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_last_renewed_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_last_renewed_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_last_renewed_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_expiring_reminder_sent_for_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_expiring_reminder_sent_for_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_expiring_reminder_sent_for_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_expiring_reminder_sent_for_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'urm_expired_reminder_sent_for_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'urm_expired_reminder_sent_for_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'urm_expired_reminder_sent_for_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'urm_expired_reminder_sent_for_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_local_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_local_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_local_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_local_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_payment_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_payment_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_payment_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_payment_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ur_coupon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ur_coupon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ur_coupon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ur_coupon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_submit_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_submit_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_submit_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_submit_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themegrill_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themegrill_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themegrill_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themegrill_sdk_dismissed_notice_black_friday'"
