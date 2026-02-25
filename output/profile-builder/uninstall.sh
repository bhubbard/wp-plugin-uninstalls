#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppb_manage_fields'
wp option delete 'pble_backup'
wp option delete 'pble'
wp option delete 'mpp_options'
wp option delete 'wppb_deactivated_upp'
wp option delete 'wppb_free_add_ons_settings'
wp option delete 'wppb_module_settings'
wp option delete 'wppb_advanced_add_ons_settings'
wp option delete 'wppb_general_settings'
wp option delete 'wppb_pages_created'
wp option delete 'initial_db_version'
wp option delete 'wppb_toolbox_forms_settings'
wp option delete 'wppb_toolbox_fields_settings'
wp option delete 'wppb_toolbox_userlisting_settings'
wp option delete 'wppb_toolbox_shortcodes_settings'
wp option delete 'wppb_toolbox_admin_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wppb_postmeta_cleanup_completed_v2'
wp option delete 'wppb_postmeta_cleanup_completed'
wp option delete 'rewrite_rules'
wp option delete 'wppb_two_factor_authentication_settings'
wp option delete 'wppb_license_details'
wp option delete 'wppb_private_website_settings'
wp option delete 'wppb_license_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_serial'"
wp option delete 'wppb_license_status'
wp option delete 'pms_license_details'
wp option delete 'wppb_review_request_status'
wp option delete 'wppb_user_pages'
wp option delete 'wppb_setup_wizard_steps'
wp option delete 'wppb_content_restriction_settings'
wp option delete 'wppb_social_connect_settings'
wp option delete 'wppb_msf_break_points'
wp option delete 'cptch_options'
wp option delete 'wppb_signups_table_updated'
wp option delete 'wppb_user_emailc_admin_approval_notif_approved_email_subject'
wp option delete 'wppb_user_emailc_admin_approval_notif_approved_email_content'
wp option delete 'wppb_user_emailc_reset_email_content'
wp option delete 'wppb_user_emailc_reset_email_subject'
wp option delete 'wppb_user_emailc_reset_success_email_content'
wp option delete 'wppb_user_emailc_reset_success_email_subject'
wp option delete 'wppb_admin_emailc_user_password_reset_email_content'
wp option delete 'wppb_admin_emailc_user_password_reset_email_subject'
wp option delete 'wppb_user_emailc_change_email_address_request_subject'
wp option delete 'wppb_user_emailc_change_email_address_request_content'
wp option delete 'wppb_user_emailc_change_email_address_subject'
wp option delete 'wppb_user_emailc_change_email_address_content'
wp option delete 'wppb_user_emailc_epaa_notification_subject'
wp option delete 'wppb_user_emailc_epaa_notification_content'
wp option delete 'wppb_admin_emailc_epaa_notification_subject'
wp option delete 'wppb_admin_emailc_epaa_notification_content'
wp option delete 'wppb_emailc_common_settings_from_reply_to_email'
wp option delete 'wppb_emailc_common_settings_from_name'
wp option delete 'wppb_user_emailc_change_email_address_enabled'
wp option delete 'wppb_default_settings'
wp option delete 'wppb_profile_builder_pro_serial'
wp option delete 'wppb_profile_builder_hobbyist_serial'
wp option delete 'wppb_module_settings_description'
wp option delete 'customRedirectSettings'
wp option delete 'customUserListingSettings'
wp option delete 'reCaptchaSettings'
wp option delete 'emailCustomizer'
wp option delete 'wppb_roles_editor_capabilities'
wp option delete 'wppb_custom_fields'
wp option delete 'wppb_addon_settings'
wp option delete 'userListingSettings'
wp option delete 'wppb_cr_global'
wp option delete 'wppb_cr_default_wp_pages'
wp option delete 'wppb_old_add_ons_status'
wp option delete 'wppb_version'
wp option delete 'wppb_recaptcha_validations'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'wppb_edd_sl_initial_activation'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wppb_pending_email_change_request_exists_%' OR option_name LIKE '_site_transient_wppb_pending_email_change_request_exists_%'"
wp transient delete 'wppb_run_setup_wizard'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wppb_confirmation_email_already_sent_%' OR option_name LIKE '_site_transient_wppb_confirmation_email_already_sent_%'"
wp transient delete 'update_plugins'
wp transient delete 'wppb_checked_licence'

# Clear Cron Jobs
wp cron event delete 'cozmos_wppb_plugin_optin_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdpr_communication_preferences_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdpr_communication_preferences_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdpr_communication_preferences_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdpr_communication_preferences_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppb_pending_email_change_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppb_pending_email_change_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppb_pending_email_change_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppb_pending_email_change_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppb_email_change_request_nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppb_email_change_request_nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppb_email_change_request_nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppb_email_change_request_nonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppb_pending_email_change_request_page_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppb_pending_email_change_request_page_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppb_pending_email_change_request_page_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppb_pending_email_change_request_page_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppb_epaa_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppb_epaa_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppb_epaa_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppb_epaa_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pbpl-active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pbpl-active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pbpl-active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pbpl-active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb_approval_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb_approval_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb_approval_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb_approval_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_profile_update_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_profile_update_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_profile_update_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_profile_update_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb_ul_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb_ul_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb_ul_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb_ul_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb_ul_faceted_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb_ul_faceted_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb_ul_faceted_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb_ul_faceted_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-ul-active-theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-ul-active-theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-ul-active-theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-ul-active-theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb_rf_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb_rf_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb_rf_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb_rf_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb_rf_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb_rf_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb_rf_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb_rf_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb_sc_rf_epf_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb_sc_rf_epf_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb_sc_rf_epf_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb_sc_rf_epf_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb_msf_post_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb_msf_post_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb_msf_post_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb_msf_post_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb_epf_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb_epf_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb_epf_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb_epf_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb_epf_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb_epf_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb_epf_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb_epf_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb_setup_wizard_newsletter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb_setup_wizard_newsletter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb_setup_wizard_newsletter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb_setup_wizard_newsletter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb_msf_break_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb_msf_break_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb_msf_break_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb_msf_break_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-content-restrict-user-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-content-restrict-user-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-content-restrict-user-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-content-restrict-user-status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-content-restrict-user-role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-content-restrict-user-role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-content-restrict-user-role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-content-restrict-user-role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-purchase-restrict-user-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-purchase-restrict-user-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-purchase-restrict-user-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-purchase-restrict-user-status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-purchase-restrict-user-role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-purchase-restrict-user-role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-purchase-restrict-user-role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-purchase-restrict-user-role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-content-restrict-messages-enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-content-restrict-messages-enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-content-restrict-messages-enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-content-restrict-messages-enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wppb-content-restrict-message-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wppb-content-restrict-message-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wppb-content-restrict-message-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wppb-content-restrict-message-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-content-restrict-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-content-restrict-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-content-restrict-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-content-restrict-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-content-restrict-custom-redirect-url-enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-content-restrict-custom-redirect-url-enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-content-restrict-custom-redirect-url-enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-content-restrict-custom-redirect-url-enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-content-restrict-custom-redirect-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-content-restrict-custom-redirect-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-content-restrict-custom-redirect-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-content-restrict-custom-redirect-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-content-restrict-message-logged_out'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-content-restrict-message-logged_out'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-content-restrict-message-logged_out'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-content-restrict-message-logged_out'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-content-restrict-message-logged_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-content-restrict-message-logged_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-content-restrict-message-logged_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-content-restrict-message-logged_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-content-restrict-message-purchasing_restricted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-content-restrict-message-purchasing_restricted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-content-restrict-message-purchasing_restricted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-content-restrict-message-purchasing_restricted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'users_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'users_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'users_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'users_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'avatar_directory_path_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'avatar_directory_path_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'avatar_directory_path_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'avatar_directory_path_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_relative_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_relative_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_relative_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_relative_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdpr_agreement_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdpr_agreement_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdpr_agreement_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdpr_agreement_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wppb_admin_approval_link_param'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wppb_admin_approval_link_param'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wppb_admin_approval_link_param'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wppb_admin_approval_link_param'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'resized_avatar_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'resized_avatar_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'resized_avatar_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'resized_avatar_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb_role_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb_role_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb_role_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb_role_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-ul-templates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-ul-templates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-ul-templates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-ul-templates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppb-single-ul-templates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppb-single-ul-templates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppb-single-ul-templates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppb-single-ul-templates'"
