#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'forminator_addon_slack_settings'
wp option delete 'forminator_enable_accessibility'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'forminator_appearance_preset_%'"
wp option delete 'forminator_welcome_dismissed'
wp option delete 'forminator_captcha_key'
wp option delete 'forminator_captcha_secret'
wp option delete 'forminator_v2_invisible_captcha_key'
wp option delete 'forminator_v2_invisible_captcha_secret'
wp option delete 'forminator_v3_captcha_key'
wp option delete 'forminator_v3_captcha_secret'
wp option delete 'forminator_turnstile_key'
wp option delete 'forminator_turnstile_secret'
wp option delete 'forminator_hcaptcha_key'
wp option delete 'forminator_hcaptcha_secret'
wp option delete 'forminator_captcha_tab_saved'
wp option delete 'forminator_captcha_language'
wp option delete 'forminator_currency'
wp option delete 'forminator_pagination_listings'
wp option delete 'forminator_uninstall_clear_data'
wp option delete 'forminator_custom_upload'
wp option delete 'forminator_custom_upload_root'
wp option delete 'forminator_permissions'
wp option delete 'forminator_enable_erasure_request_erase_form_submissions'
wp option delete 'retain_submission_forever'
wp option delete 'forminator_retain_submissions_interval_number'
wp option delete 'forminator_retain_submissions_interval_unit'
wp option delete 'retain_ip_forever'
wp option delete 'forminator_retain_ip_interval_number'
wp option delete 'forminator_retain_ip_interval_unit'
wp option delete 'retain_geolocation_forever'
wp option delete 'forminator_retain_geolocation_interval_number'
wp option delete 'forminator_retain_geolocation_interval_unit'
wp option delete 'poll_retain_submission_forever'
wp option delete 'forminator_retain_poll_submissions_interval_number'
wp option delete 'forminator_retain_poll_submissions_interval_unit'
wp option delete 'retain_poll_forever'
wp option delete 'forminator_retain_votes_interval_number'
wp option delete 'forminator_retain_votes_interval_unit'
wp option delete 'quiz_retain_submission_forever'
wp option delete 'forminator_retain_quiz_submissions_interval_number'
wp option delete 'forminator_retain_quiz_submissions_interval_unit'
wp option delete 'forminator_pagination_entries'
wp option delete 'forminator_dashboard_settings'
wp option delete 'forminator_sender_email_address'
wp option delete 'forminator_sender_name'
wp option delete 'forminator_auto_saving'
wp option delete 'forminator_editor_settings'
wp option delete 'forminator_usage_tracking'
wp option delete 'forminator_version_upgraded'
wp option delete 'forminator_skip_pro_notice'
wp option delete 'forminator_cf7_notice_dismissed'
wp option delete 'forminator_stripe_notice_dismissed'
wp option delete 'forminator_stripe_rak_notice_dismissed'
wp option delete 'forminator_stripe_configuration'
wp option delete 'forminator_paypal_configuration'
wp option delete 'forminator_rating_success'
wp option delete 'forminator_rating_dismissed'
wp option delete 'forminator_publish_rating_later'
wp option delete 'forminator_publish_rating_later_dismiss'
wp option delete 'forminator_free_install_date'
wp option delete 'forminator_days_rating_later_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%dismiss'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%later'"
wp option delete 'forminator_hosting_banner_dismiss'
wp option delete 'forminator_hosting_banner_later'
wp option delete 'forminator_appearance_presets'
wp option delete 'forminator_submissions_form_type'
wp option delete 'forminator_submissions_form_id'
wp option delete 'forminator_dismiss_feature_1490'
wp option delete 'forminator_activation_hook'
wp option delete 'forminator_exporter_log'
wp option delete 'forminator_entries_export_schedule'
wp option delete 'forminator_posts_map'
wp option delete 'forminator_version'
wp option delete 'forminator_stripe_payment_intents'
wp option delete 'forminator_captcha_theme'
wp option delete 'forminator_form_privacy_settings'
wp option delete 'forminator_poll_privacy_settings'
wp option delete 'forminator_paypal_api_mode'
wp option delete 'forminator_paypal_secret'
wp option delete 'forminator_activated_addons'
wp option delete 'registration'
wp option delete 'wpmudev_apikey'
wp option delete 'allowedthemes'
wp option delete 'active_sitewide_plugins'
wp option delete 'forminator_module_enable_share_entry'
wp option delete 'forminator_default_report_entry'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_forminator_free_plan_remind_later_%' OR option_name LIKE '_site_transient_forminator_free_plan_remind_later_%'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'forminator_get_preset_templates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frmt_dismissed_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frmt_dismissed_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frmt_dismissed_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frmt_dismissed_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpcf7s_file-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpcf7s_file-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpcf7s_file-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpcf7s_file-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'forminator_submission_rating_later'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'forminator_submission_rating_later'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'forminator_submission_rating_later'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'forminator_submission_rating_later'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'forminator_submission_rating_later_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'forminator_submission_rating_later_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'forminator_submission_rating_later_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'forminator_submission_rating_later_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_form_disconnect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_form_disconnect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_form_disconnect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_form_disconnect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_poll_disconnect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_poll_disconnect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_poll_disconnect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_poll_disconnect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_quiz_disconnect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_quiz_disconnect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_quiz_disconnect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_quiz_disconnect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_has_forminator_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_has_forminator_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_has_forminator_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_has_forminator_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'defender_two_fa_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'defender_two_fa_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'defender_two_fa_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'defender_two_fa_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
