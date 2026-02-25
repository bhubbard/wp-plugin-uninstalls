#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'email_subscribers_do_activation_redirect'
wp option delete 'ig_es_onboarding_complete'
wp option delete 'ig_es_from_name'
wp option delete 'ig_es_from_email'
wp option delete 'ig_es_track_email_opens'
wp option delete 'ig_es_track_link_click'
wp option delete 'ig_es_track_utm'
wp option delete 'ig_es_onboarding_status'
wp option delete 'ig_es_email_type'
wp option delete 'ig_es_campaign_error'
wp option delete 'ig_es_post_duplicator_promotion_notice_dismissed'
wp option delete 'ig_es_engage_promotion_notice_dismissed'
wp option delete 'ig_es_email_auth_headers'
wp option delete 'ig_es_optin_type'
wp option delete 'ig_es_allow_tracking'
wp option delete 'ig_es_onboarding_test_campaign_success'
wp option delete 'ig_es_onboarding_test_campaign_error'
wp option delete 'sidebars_widgets'
wp option delete 'widget_email-subscribers-form'
wp option delete 'ig_es_wp_cron_notice'
wp option delete 'ig_es_trial_started_at'
wp option delete 'ig_es_admin_emails'
wp option delete 'ig_es_enable_captcha'
wp option delete 'ig_es_coupons'
wp option delete 'ig_es_test_mailbox_user'
wp option delete 'ig_es_blocked_domains'
wp option delete 'ig_es_installed_on'
wp option delete 'ig_es_send_time_optimizer_enabled'
wp option delete 'ig_es_send_time_optimization_method'
wp option delete 'ig_es_db_version'
wp option delete 'ig_es_update_processed_tasks'
wp option delete 'ig_es_update_tasks_to_process'
wp option delete 'current_sa_email_subscribers_db_version'
wp option delete 'email-subscribers'
wp option delete 'wp_mail_smtp'
wp option delete 'ig_es_templates_loaded_for'
wp option delete 'ig_es_plan_activation_dates'
wp option delete 'ig_es_imported_remote_gallery_template_ids'
wp option delete 'ig_es_allow_api'
wp option delete 'cron'
wp option delete 'ig_es_disable_wp_cron'
wp option delete 'ig_es_enable_bounce_handling_feature'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ig_es_cron_lock_%'"
wp option delete 'ig_es_cron_interval'
wp option delete 'ig_es_cronurl'
wp option delete 'ig_es_cron_last_hit'
wp option delete 'ig_es_post_image_size'
wp option delete 'ig_es_form_submission_success_message'
wp option delete 'ig_es_sync_wp_users'
wp option delete 'ig_es_last_cleanup_time'
wp option delete 'ig_list_cleanup_used'
wp option delete 'ig_es_admin_new_contact_email_subject'
wp option delete 'ig_es_admin_new_contact_email_content'
wp option delete 'ig_es_notify_admin'
wp option delete 'ig_es_confirmation_mail_content'
wp option delete 'ig_es_confirmation_mail_subject'
wp option delete 'ig_es_cron_admin_email_subject'
wp option delete 'ig_es_cron_admin_email'
wp option delete 'ig_es_enable_cron_admin_email'
wp option delete 'ig_es_welcome_email_subject'
wp option delete 'ig_es_welcome_email_content'
wp option delete 'ig_es_enable_welcome_email'
wp option delete 'ig_es_unsubscribe_link_content'
wp option delete 'ig_es_mailer_settings'
wp option delete 'ig_es_last_cron_run'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_locked_data'"
wp option delete 'ig_es_is_trial'
wp option delete 'ig_es_trial_to_premium_notice_date'
wp option delete 'ig_es_new_category_format_campaign_ids'
wp option delete 'ig_es_bulk_import'
wp option delete 'ig_es_bulk_import_errors'
wp option delete 'ig_es_remote_gallery_categories'
wp option delete 'ig_es_remote_gallery_items'
wp option delete 'ig_es_test_emails'
wp option delete 'widget_es_widget'
wp option delete 'ig_es_bounce_mailbox_user'
wp option delete 'ig_es_enable_summary_automation'
wp option delete 'ig_es_run_cron_on'
wp option delete 'ig_es_run_cron_time'
wp option delete 'ig_es_powered_by'
wp option delete 'ig_es_house_keeping_enabled'
wp option delete 'ig_es_house_keeping_enabled_campaign_types'
wp option delete 'ig_es_delete_unconfirmed_contacts'
wp option delete 'ig_es_delete_plugin_data'
wp option delete 'ig_es_enable_ajax_form_submission'
wp option delete 'ig_es_intermediate_unsubscribe_page'
wp option delete 'ig_es_show_opt_in_consent'
wp option delete 'ig_es_opt_in_consent_text'
wp option delete 'ig_es_optin_page'
wp option delete 'ig_es_subscription_success_message'
wp option delete 'ig_es_subscription_error_messsage'
wp option delete 'ig_es_unsubscribe_page'
wp option delete 'ig_es_unsubscribe_success_message'
wp option delete 'ig_es_unsubscribe_error_message'
wp option delete 'ig_es_track_ip_address'
wp option delete 'ig_es_enable_known_attackers_domains'
wp option delete 'ig_es_enable_disposable_domains'
wp option delete 'ig_es_user_roles'
wp option delete 'ig_es_hourly_email_send_limit'
wp option delete 'ig_es_max_email_send_at_once'
wp option delete 'ig_es_ess_branding_enabled'
wp option delete 'ig_es_rest_api_keys'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed_on'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp option delete 'active_sitewide_plugins'
wp option delete 'ig_es_close_trial_notice'
wp option delete 'ig_es_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ig_es_admin_notice_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ig_es_custom_admin_notice_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ig_es_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_date'"
wp option delete 'ig_es_offer_bfcm_2025'
wp option delete 'ig_es_offer_halloween_2022'
wp option delete 'ig_es_offer_covid_19'
wp option delete 'ig_es_ess_opted_for_sending_service'
wp option delete 'ig_es_ess_status'
wp option delete 'ig_es_ess_onboarding_complete'
wp option delete 'ig_es_ess_optin_shown'
wp option delete 'ig_es_promotion_disabled'
wp option delete 'ig_es_ess_promotion_mailer_notice'
wp option delete 'ig_es_ess_fallback_removal_notice_dismissed'
wp option delete 'ig_es_ess_free_limit_decrease_notice_dismissed'
wp option delete 'ig_es_set_cron_data'
wp option delete 'ig_es_cron_data_deleted'
wp option delete 'ig_es_close_list_cleanup_notice'
wp option delete 'ig_es_spam_emails'
wp option delete 'ig_es_spam_detected'
wp option delete 'ig_es_rolesandcapabilities'
wp option delete 'es_template_migration_done'
wp option delete 'ig_es_admin_new_sub_content'
wp option delete 'ig_es_sentreport'
wp option delete 'ig_es_confirmcontent'
wp option delete 'ig_es_welcomecontent'
wp option delete 'ig_es_unsubcontent'
wp option delete 'ig_es_cron_adminmail'
wp option delete 'ig_es_optinlink'
wp option delete 'ig_es_unsublink'
wp option delete 'ig_es_enable_smtp'
wp option delete 'ig_es_smtp_host'
wp option delete 'ig_es_smtp_port'
wp option delete 'ig_es_smtp_encryption'
wp option delete 'ig_es_smtp_authentication'
wp option delete 'ig_es_smtp_username'
wp option delete 'ig_es_smtp_password'
wp option delete 'ig_es_enable_sending_mails_in_customer_timezone'
wp option delete 'ig_es_new_category_format_migrated_campaigns'
wp option delete 'ig_es_ess_daily_limit_migrated'
wp option delete 'ig_es_ess_data'
wp option delete 'ig_es_membership_integration_notice_shown'
wp option delete 'ig_es_sync_comment_users'

# Delete Transients
wp transient delete 'ig_es_release_notes_from_icegram'
wp transient delete 'ig_es_installing'
wp transient delete 'ig_es_updating'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ig_es_cache_%' OR option_name LIKE '_site_transient_ig_es_cache_%'"
wp transient delete 'ig_es_total_emails_sent'
wp transient delete 'ig_es_remaining_email_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ig_es_geoip_%' OR option_name LIKE '_site_transient_ig_es_geoip_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ig_es_post_mailing_queue_ids_%' OR option_name LIKE '_site_transient_ig_es_post_mailing_queue_ids_%'"
wp transient delete 'ig_es_excluded_contact_ids_on_import'
wp transient delete 'ig_es_last_contact_id'
wp transient delete 'ig_es_contact_import_is_running'
wp transient delete 'ig_es_imported_contact_ids_range'
wp transient delete 'ig_es_remote_gallery_categories_updated'
wp transient delete 'ig_es_remote_gallery_items_updated'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'ig_es_run_workflow'

# Clear Cron Jobs
wp cron event delete 'ig_es_cron_auto_responder'
wp cron event delete 'ig_es_cron_worker'
wp cron event delete 'ig_es_cron'
wp cron event delete 'ig_es_calculate_engagement_score'
wp cron event delete 'ig_es_bounce_handler_cron_action'
wp cron event delete 'ig_es_wc_abandoned_cart_worker'
wp cron event delete 'ig_es_wc_products_on_sale_worker'
wp cron event delete 'ig_es_list_cleanup_worker'
wp cron event delete 'ig_es_cron_fifteen_mins'
wp cron event delete 'ig_es_expires_email_send_action'
wp cron event delete 'ig_es_trial_expires_reminder_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'es_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'es_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'es_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'es_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'es_utm_campaign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'es_utm_campaign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'es_utm_campaign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'es_utm_campaign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'es_dnd_editor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'es_dnd_editor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'es_dnd_editor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'es_dnd_editor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'es_editor_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'es_editor_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'es_editor_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'es_editor_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'es_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'es_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'es_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'es_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ig_es_rest_api_keys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ig_es_rest_api_keys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ig_es_rest_api_keys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ig_es_rest_api_keys'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ig_es_is_post_notified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ig_es_is_post_notified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ig_es_is_post_notified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ig_es_is_post_notified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
