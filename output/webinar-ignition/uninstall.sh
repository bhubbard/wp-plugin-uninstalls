#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hundered_ms_management_token'
wp option delete 'show_webinarignition_footer_logo'
wp option delete 'webinarignition_show_footer_branding'
wp option delete 'webinarignition_affiliate_link'
wp option delete 'webinarignition_branding_copy'
wp option delete 'webinarignition_activated'
wp option delete 'wi_optin_confirmed'
wp option delete 'wi_support_confirmed'
wp option delete 'webinarignition_registration_shortcode'
wp option delete 'wi_changelog_version'
wp option delete 'webinarignition_enable_third_party_server'
wp option delete 'webinarignition_email_verification'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'webinar_data_restricted_mails%'"
wp option delete 'webinarignition_auto_clean_log_db'
wp option delete 'webinarignition_auto_login_password_email'
wp option delete 'webinarignition_registration_auto_login'
wp option delete 'wi_has_old_webinars'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lead_data_restricted_mails%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'webinarignition_lead_confirmed_%'"
wp option delete 'wp2leads_itm_webinarignition_webinar_to_map'
wp option delete 'webinarignition_unsubscribe_links'
wp option delete 'webinarignition_email_templates_from_name'
wp option delete 'webinarignition_email_templates_from_email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'webinarignition_campaign_%'"
wp option delete 'webinarignition_upgraded_smtp'
wp option delete 'webinarignition_smtp_credentials_failed'
wp option delete 'webinarignition_defer_notice_dismissed'
wp option delete 'webinarignition_map_campaign_hash_to_id'
wp option delete 'webinarignition_map_campaign_id_to_hash'
wp option delete 'webinarignition_smtp_email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wi_webinar_post_id_%'"
wp option delete 'wi_data_conversion_status'
wp option delete 'wi_update_once'
wp option delete 'wi_data_conversion_page'
wp option delete 'wi_converted_webinars'
wp option delete 'webinarignition_footer_text_color'
wp option delete 'webinarignition_branding_background_color'
wp option delete 'wi_redirect_after_installation'
wp option delete 'wi_first_install'
wp option delete 'webinarignition_enable_header_img_max_width'
wp option delete 'webinarignition_email_logo_max_width'
wp option delete 'webinarignition_smtp_name'
wp option delete 'webinarignition_reply_to_email'
wp option delete 'webinarignition_smtp_host'
wp option delete 'webinarignition_smtp_port'
wp option delete 'webinarignition_smtp_protocol'
wp option delete 'webinarignition_smtp_user'
wp option delete 'webinarignition_smtp_pass'
wp option delete 'webinarignition_smtp_connect'
wp option delete 'webinarignition_plugin_activation_date'
wp option delete 'webinarignition_activate_freemius'
wp option delete 'preview_url'
wp option delete 'webinarignition_email_verification_template'
wp option delete 'webinarignition_footer_text'
wp option delete 'sidebar_cta'
wp option delete 'webinarignition_installer_version'
wp option delete 'webinarignition_2_2_0_update'
wp option delete 'webinarignition_2_3_0_update'
wp option delete 'webinarignition_2_2_17_update'
wp option delete 'webinarignition_2_4_4_update'
wp option delete 'webinarignition_2_5_0_update'
wp option delete 'webinarignition_2_6_5_update'
wp option delete 'webinarignition_2_6_8_update'
wp option delete 'webinarignition_2_9_0_update'
wp option delete 'webinarignition_2_12_0_update'
wp option delete 'webinarignition_enable_honeypot_field'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wi_lead_watch_time_%'"
wp option delete 'webinarignition_use_grid_custom_color'
wp option delete 'wi_lead_watch_time_[lead_id]'
wp option delete 'webinarignition_hide_top_admin_bar'
wp option delete 'webinarignition_smtp_settings_global'
wp option delete 'webinarignition_show_email_header_img'
wp option delete 'webinarignition_email_logo_url'
wp option delete 'header_img_algnmnt'
wp option delete 'webinarignition_email_background_color'
wp option delete 'webinarignition_email_body_background_color'
wp option delete 'webinarignition_email_text_color'
wp option delete 'webinarignition_body_text_line_height'
wp option delete 'webinarignition_headings_color'
wp option delete 'webinarignition_email_font_size'
wp option delete 'webinarignition_heading_background_color'
wp option delete 'webinarignition_heading_text_color'
wp option delete 'webinarignition_email_signature'
wp option delete 'webinarignition_emails_signatur'
wp option delete 'webinarignition_brand_color'
wp option delete 'webinarignition_brand_contrast_color'
wp option delete 'webinarignition_db_version'
wp option delete 'webinarignition_migrated_smtp'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'wi_has_old_webinars'
wp transient delete 'update_plugins'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'webinarignition_cron_hook'
wp cron event delete 'webinarignition_delete_logs_db_cron_hook'
wp cron event delete 'wi_cron_convert_data'
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'webinarignition_daily_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wi_support_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wi_support_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wi_support_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wi_support_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webinar_import_mapped_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webinar_import_mapped_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webinar_import_mapped_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webinar_import_mapped_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webinarignitionx_meta_box_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webinarignitionx_meta_box_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webinarignitionx_meta_box_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webinarignitionx_meta_box_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wi_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wi_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wi_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wi_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notice-webinarignition-free'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notice-webinarignition-free'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notice-webinarignition-free'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notice-webinarignition-free'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%status'"
