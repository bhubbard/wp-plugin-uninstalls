#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eb_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notify_allow'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_bcc_email'"
wp option delete 'eb_mail_from_email'
wp option delete 'eb_mail_from_name'
wp option delete 'eb_emailtmpl_create_user_notify_allow'
wp option delete 'eb_connection'
wp option delete 'eb_general'
wp option delete 'eb_pro_modules_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key_sites'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_max_site'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_addon_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_product_site'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key_expires'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key_site_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key_license_limit'"
wp option delete 'edd_edwiser_bridge_pro_license_status'
wp option delete 'eb_mdl_plugin_update_check'
wp option delete 'eb_pro_elementor_shop_page_template_id'
wp option delete 'eb_pro_elementor_single_product_page_template_id'
wp option delete 'eb_enabled_templates'
wp option delete 'eb_woo_gutenberg_pages'
wp option delete 'eb_gutenberg_pages'
wp option delete 'eb_setup_data'
wp option delete 'edd_edwiser_bridge_pro_license_addon_data'
wp option delete 'moodle_edwiser_bridge_pro'
wp option delete 'woocommerce_checkout_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_override'"
wp option delete 'woocommerce_checkout_page__id_old'
wp option delete 'edd_edwiser_bridge_pro_license_key'
wp option delete 'eb_setup_wizard_completed'
wp option delete 'eb_sso_settings_general'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'eb_current_version'
wp option delete 'eb_mdl_plugin_update_notice_dismissed'
wp option delete 'eb_show_update_modal_4_3_0'
wp option delete 'modular_analytics_consent'
wp option delete 'modular_analytics_deactivation_feedback'
wp option delete 'edwiser_custom_fields'
wp option delete 'eb_sso_settings_redirection'
wp option delete 'eb_pro_consolidated_plugin_notice_dismissed'
wp option delete 'eb_free_template_modal_shown'
wp option delete 'eb_show_free_template_modal'
wp option delete 'eb_pro_template_modal_shown'
wp option delete 'eb_show_pro_template_modal'
wp option delete 'eb_rename_file_notice_dismissed'
wp option delete 'eb_renamed_lang_files'
wp option delete 'eb_paypal'
wp option delete 'eb_woo_int_settings'
wp option delete 'eb_bp_plugin_version'
wp option delete 'eb_emailtmpl_course_access_expir_notify_allow'
wp option delete 'eb_emailtmpl_linked_existing_wp_new_moodle_user_notify_allow'
wp option delete 'eb_emailtmpl_refund_completion_notifier_to_user_notify_allow'
wp option delete 'eb_emailtmpl_refund_completion_notifier_to_admin_notify_allow'
wp option delete 'eb_emailtmpl_linked_existing_wp_user_notify_allow'
wp option delete 'eb_emailtmpl_order_completed_notify_allow'
wp option delete 'eb_emailtmpl_mdl_enrollment_trigger_notify_allow'
wp option delete 'eb_emailtmpl_mdl_un_enrollment_trigger_notify_allow'
wp option delete 'eb_emailtmpl_mdl_user_deletion_trigger_notify_allow'
wp option delete 'eb_emailtmpl_new_user_email_verification_notify_allow'
wp option delete 'eb_pro_enable_single_course_override'
wp option delete 'eb_pro_enable_all_courses_override'
wp option delete 'eb_template'

# Delete Transients
wp transient delete '_eb_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_trans' OR option_name LIKE '_site_transient_%_license_trans'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_eb_stats_%' OR option_name LIKE '_site_transient_eb_stats_%'"
wp transient delete 'edwiser_bridge_admin_feedback_notice'
wp transient delete '_eb_pro_consolidated_plugin_notice'

# Clear Cron Jobs
wp cron event delete 'eb_monthly_usage_tracking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moodle_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moodle_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moodle_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moodle_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_course_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_course_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_course_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_course_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moodle_course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moodle_course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moodle_course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moodle_course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_course_manual_enrolment_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_course_manual_enrolment_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_course_manual_enrolment_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_course_manual_enrolment_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'courseId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'courseId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'courseId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'courseId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_user_email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_user_email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_user_email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_user_email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_order_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_order_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_order_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_order_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_pending_enrollment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_pending_enrollment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_pending_enrollment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_pending_enrollment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eb_page_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eb_page_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eb_page_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eb_page_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_discount_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_discount_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_discount_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_discount_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_feedback_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_feedback_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_feedback_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_feedback_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_admin_bfcm_pre_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_admin_bfcm_pre_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_admin_bfcm_pre_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_admin_bfcm_pre_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_admin_bfcm_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_admin_bfcm_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_admin_bfcm_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_admin_bfcm_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_admin_remui_demo_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_admin_remui_demo_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_admin_remui_demo_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_admin_remui_demo_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_admin_upgrade_to_pro_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_admin_upgrade_to_pro_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_admin_upgrade_to_pro_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_admin_upgrade_to_pro_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'courseIdold'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'courseIdold'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'courseIdold'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'courseIdold'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_moodle_cat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_moodle_cat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_moodle_cat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_moodle_cat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moodle_course_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moodle_course_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moodle_course_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moodle_course_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_order_refund_hist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_order_refund_hist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_order_refund_hist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_order_refund_hist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_order_status_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_order_status_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_order_status_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_order_status_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_paypal_sandbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_paypal_sandbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_paypal_sandbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_paypal_sandbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_paypal_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_paypal_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_paypal_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_paypal_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_user_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_user_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_user_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_user_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eb_user_email_verification_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eb_user_email_verification_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eb_user_email_verification_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eb_user_email_verification_key'"
