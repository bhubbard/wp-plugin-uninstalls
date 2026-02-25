#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awsm_jobs_hr_notification'
wp option delete 'awsm_jobs_admin_to_notification'
wp option delete 'awsm_jobs_plugin_version'
wp option delete 'awsm_jobs_filter'
wp option delete 'awsm_register_default_settings'
wp option delete 'awsm_permalink_slug'
wp option delete 'awsm_jobs_recaptcha_site_key'
wp option delete 'awsm_jobs_enable_recaptcha'
wp option delete 'awsm_jobs_recaptcha_secret_key'
wp option delete 'awsm_enable_gdpr_cb'
wp option delete 'awsm_hide_uploaded_files'
wp option delete 'awsm_jobs_notification_customizer'
wp option delete 'awsm_jobs_recaptcha_type'
wp option delete 'awsm_jobs_enable_captcha'
wp option delete 'awsm_jobs_recaptcha_v3_site_key'
wp option delete 'awsm_jobs_recaptcha_v3_secret_key'
wp option delete 'awsm_jobs_captcha_no_conflict_scripts'
wp option delete 'awsm_jobs_listing_view'
wp option delete 'awsm_enable_job_filter_listing'
wp option delete 'awsm_jobs_default_listing_page_id'
wp option delete 'awsm_select_page_listing'
wp option delete 'awsm_jobs_timezone'
wp option delete 'awsm_job_company_name'
wp option delete 'awsm_hr_email_address'
wp option delete 'awsm_jobs_listing_available_filters'
wp option delete 'awsm_jobs_enable_featured_image'
wp option delete 'awsm_jobs_disable_archive_page'
wp option delete 'awsm_jobs_remove_permalink_front_base'
wp option delete 'awsm_enable_job_search'
wp option delete 'awsm_jobs_admin_upload_file_ext'
wp option delete 'awsm_gdpr_cb_text'
wp option delete 'awsm_jobs_acknowledgement'
wp option delete 'awsm_jobs_from_email_notification'
wp option delete 'awsm_jobs_reply_to_notification'
wp option delete 'awsm_jobs_notification_subject'
wp option delete 'awsm_jobs_notification_content'
wp option delete 'awsm_jobs_notification_mail_template'
wp option delete 'awsm_jobs_enable_admin_notification'
wp option delete 'awsm_jobs_admin_from_email_notification'
wp option delete 'awsm_jobs_admin_reply_to_notification'
wp option delete 'awsm_jobs_admin_hr_notification'
wp option delete 'awsm_jobs_admin_notification_subject'
wp option delete 'awsm_jobs_admin_notification_content'
wp option delete 'awsm_jobs_notification_admin_mail_template'
wp option delete 'awsm_jobs_enable_expiry_notification'
wp option delete 'awsm_jobs_author_from_email_notification'
wp option delete 'awsm_jobs_author_reply_to_notification'
wp option delete 'awsm_jobs_author_to_notification'
wp option delete 'awsm_jobs_author_hr_notification'
wp option delete 'awsm_jobs_author_notification_subject'
wp option delete 'awsm_jobs_author_notification_content'
wp option delete 'awsm_jobs_notification_author_mail_template'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_site_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_key'"
wp option delete 'awsm_jobs_recaptcha_fail_message'
wp option delete 'awsm_jobs_enable_akismet_protection'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'awsm_jobs_default_%'"
wp option delete 'awsm_jobs_form_style'
wp option delete 'awsm_jobs_expired_jobs_content_details'
wp option delete 'awsm_default_msg'
wp option delete 'awsm_jobs_listing_specs'
wp option delete 'awsm_jobs_list_per_page'
wp option delete 'awsm_delete_data_on_uninstall'
wp option delete 'awsm_jobs_insert_default_specs_terms'
wp option delete 'awsm_jobs_upgrade_count'
wp option delete 'awsm_jobs_pagination_type'
wp option delete 'awsm_jobs_email_digest'
wp option delete 'awsm_jobs_expired_jobs_block_search'
wp option delete 'awsm_jobs_plugin_rating'
wp option delete 'awsm_jobs_details_page_template'
wp option delete 'awsm_jobs_archive_page_template'
wp option delete 'awsm_jobs_remove_filters'
wp option delete 'awsm_jobs_expired_jobs_listings'
wp option delete 'awsm_jobs_number_of_columns'
wp option delete 'awsm_jobs_details_page_layout'
wp option delete 'awsm_jobs_hide_expiry_date'
wp option delete 'awsm_jobs_show_specs_icon'
wp option delete 'awsm_jobs_make_specs_clickable'
wp option delete 'awsm_jobs_specification_job_detail'
wp option delete 'awsm_jobs_specs_position'

# Delete Transients
wp transient delete '_awsm_activation_redirect'
wp transient delete '_awsm_add_ons_data'

# Clear Cron Jobs
wp cron event delete 'awsm_jobs_email_digest'
wp cron event delete 'awsm_check_for_expired_jobs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awsm_applicant_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awsm_applicant_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awsm_applicant_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awsm_applicant_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awsm_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awsm_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awsm_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awsm_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awsm_exp_list_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awsm_exp_list_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awsm_exp_list_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awsm_exp_list_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awsm_set_exp_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awsm_set_exp_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awsm_set_exp_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awsm_set_exp_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awsm_job_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awsm_job_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awsm_job_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awsm_job_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awsm_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awsm_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awsm_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awsm_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awsm_apply_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awsm_apply_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awsm_apply_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awsm_apply_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awsm_application_mails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awsm_application_mails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awsm_application_mails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awsm_application_mails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awsm_job_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awsm_job_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awsm_job_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awsm_job_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awsm_applicant_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awsm_applicant_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awsm_applicant_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awsm_applicant_ip'"
