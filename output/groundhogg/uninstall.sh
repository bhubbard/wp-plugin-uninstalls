#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gh_force_to_setup'
wp option delete 'disallowed_keys'
wp option delete 'gh_telemetry_email'
wp option delete 'gh_master_license'
wp option delete 'gh_support_license'
wp option delete 'gh_support_user_login'
wp option delete 'gh_ticket_defaults'
wp option delete 'gh_custom_reports'
wp option delete 'gh_master_license_access'
wp option delete 'gh_custom_profile_fields'
wp option delete 'gh_custom_preference_fields'
wp option delete 'gh_email_log_retention'
wp option delete 'gh_page_visits_log_retention'
wp option delete 'wp_cron_last_ping'
wp option delete 'gh_cron_last_ping'
wp option delete 'gh_disable_wp_cron'
wp option delete 'gh_custom_email_footer_text'
wp option delete 'gh_task_outcomes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'gh_custom_tabs'
wp option delete 'gh_custom_tab_sections'
wp option delete 'gh_custom_tab_section_fields'
wp option delete 'gh_contact_custom_properties'
wp option delete 'gh_bounce_inbox'
wp option delete 'gh_bounce_inbox_password'
wp option delete 'gh_bounce_inbox_host'
wp option delete 'gh_bounce_inbox_port'
wp option delete 'gh_unsubscribe_email'
wp option delete 'gh_failed_event_notification_last_sent'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_service'"
wp option delete 'gh_extensions'
wp option delete 'gh_recaptcha_version'
wp option delete 'gh_recaptcha_site_key'
wp option delete 'gh_recaptcha_v3_score_threshold'
wp option delete 'gh_terms'
wp option delete 'gh_recaptcha_secret_key'
wp option delete 'gh_turnstile_site_key'
wp option delete 'gh_turnstile_secret_key'
wp option delete 'gh_override_from_name'
wp option delete 'gh_override_from_email'
wp option delete 'gh_managed_page_name_override'
wp option delete 'gh_default_country_code'
wp option delete 'gh_primary_user'
wp option delete 'get_default_email_width'
wp option delete 'gh_owners'
wp option delete 'active_sitewide_plugins'
wp option delete 'gh_url_tracking_exclusions'
wp option delete 'gh_business_name'
wp option delete 'gh_phone'
wp option delete 'gh_privacy_policy'
wp option delete 'gh_email_editor_block_defaults'
wp option delete 'gh_email_editor_color_palette'
wp option delete 'gh_email_editor_global_fonts'
wp option delete 'gh_email_editor_global_social_accounts'
wp option delete 'gh_consent_cookie_name'
wp option delete 'gh_consent_cookie_value'
wp option delete 'gh_default_contact_tab'
wp option delete 'gh_imap_inbox_password'
wp option delete 'gh_imap_inbox_address'
wp option delete 'gh_imap_inbox_host'
wp option delete 'gh_imap_inbox_port'
wp option delete 'gh_use_advanced_email_editor'
wp option delete 'gh_enable_tag_mapping'
wp option delete 'gh_disable_unsubscribe_header'
wp option delete 'gh_purge_page_visits'
wp option delete 'gh_queue_times_executed'
wp option delete 'gh_average_execution_time'
wp option delete 'gh_queue_last_execution_time'
wp option delete 'gh_ignore_event_errors'
wp option delete 'gh_event_failure_notification_email'
wp option delete 'gh_auto_login_fallback_page'
wp option delete 'gh_global_db_enabled'
wp option delete 'gh_confirmed_tag'
wp option delete 'gh_unconfirmed_tag'
wp option delete 'gh_unsubscribed_tag'
wp option delete 'gh_spammed_tag'
wp option delete 'gh_bounced_tag'
wp option delete 'gh_complained_tag'
wp option delete 'gh_weekly_tag'
wp option delete 'gh_monthly_tag'
wp option delete 'gh_marketable_tag'
wp option delete 'gh_non_marketable_tag'
wp option delete 'gh_opted_in_stats_collection'
wp option delete 'gh_safe_mode_last_used'
wp option delete 'gh_open_tracking_delay'
wp option delete 'gh_click_tracking_delay'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dates'"
wp option delete 'gh_secret_key'
wp option delete 'gh_secret_iv'
wp option delete 'gh_safe_mode_enabled'
wp option delete 'gh_safe_mode_restore_plugins'
wp option delete 'gh_affiliate_id'
wp option delete 'gh_email_footer_alignment'
wp option delete 'gh_business_phone'

# Delete Transients
wp transient delete 'gh_last_action'
wp transient delete 'groundhogg_last_action'
wp transient delete 'gh_get_broadcast_config'
wp transient delete 'gh_step_id'
wp transient delete 'gh_current_broadcast_id'
wp transient delete 'gh_create_user_job_config'
wp transient delete 'gh_send_account_email'
wp transient delete 'gh_bulk_edit_fields'
wp transient delete 'gh_bulk_edit_query'
wp transient delete 'gh_export_headers'
wp transient delete 'gh_export_query'
wp transient delete 'gh_export_header_type'
wp transient delete 'gh_export_file'
wp transient delete 'gh_import_file_path'
wp transient delete 'gh_import_map'
wp transient delete 'gh_import_tags'
wp transient delete 'gh_import_compliance'
wp transient delete 'update_plugins'
wp transient delete 'groundhogg_review_request_dismissed'
wp transient delete 'gh_notification_ids'
wp transient delete 'site_country_code'

# Clear Cron Jobs
wp cron event delete 'groundhogg/cleanup'
wp cron event delete 'groundhogg/daily'
wp cron event delete 'groundhogg/sending_service/verify_domain'
wp cron event delete 'groundhogg/purge_email_logs'
wp cron event delete 'groundhogg/purge_page_visits'
wp cron event delete 'groundhogg/aws/remove_old_logs'
wp cron event delete 'groundhogg/birthday'
wp cron event delete 'groundhogg/telemetry'
wp cron event delete 'groundhogg/check_bounces'
wp cron event delete 'groundhogg/purge_expired_permissions_keys'
wp cron event delete 'gh_purge_old_email_logs'
wp cron event delete 'gh_purge_page_visits'
wp cron event delete 'gh_do_stats_collection'
wp cron event delete 'gh_purge_expired_permissions_keys'
wp cron event delete 'gh_check_bounces'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'groundhogg_info_card_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'groundhogg_info_card_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'groundhogg_info_card_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'groundhogg_info_card_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gh_funnel_editor_full_screen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gh_funnel_editor_full_screen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gh_funnel_editor_full_screen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gh_funnel_editor_full_screen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gh_weekly_overview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gh_weekly_overview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gh_weekly_overview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gh_weekly_overview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gh_broadcast_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gh_broadcast_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gh_broadcast_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gh_broadcast_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gh_free_extension_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gh_free_extension_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gh_free_extension_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gh_free_extension_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgh_user_public_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgh_user_public_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgh_user_public_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgh_user_public_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpgh_user_secret_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpgh_user_secret_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpgh_user_secret_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpgh_user_secret_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'signature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'signature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'signature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'signature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gh_default_contact_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gh_default_contact_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gh_default_contact_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gh_default_contact_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gh_test_emails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gh_test_emails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gh_test_emails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gh_test_emails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'preferred_test_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'preferred_test_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'preferred_test_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'preferred_test_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'groundhogg_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'groundhogg_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'groundhogg_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'groundhogg_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gh_safe_mode_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gh_safe_mode_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gh_safe_mode_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gh_safe_mode_enabled'"
