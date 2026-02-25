#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sjb_default_loader_list'
wp option delete 'sjba_addons'
wp option delete 'job_application_setting_form_fields_enable'
wp option delete 'jobapp_settings_options'
wp option delete 'job_board_application_form_fields_enable'
wp option delete 'job_post_layout_settings'
wp option delete 'job_board_features_enable'
wp option delete 'jobfeature_settings_options'
wp option delete 'job_board_container_class'
wp option delete 'job_board_container_width'
wp option delete 'quick_apply_btn_text'
wp option delete 'read_more_btn_text'
wp option delete 'apply_now_btn_text'
wp option delete 'job_board_container_id'
wp option delete 'job_board_pages_layout'
wp option delete 'job_board_jobpost_content'
wp option delete 'job_post_title_settings'
wp option delete 'job_board_listing'
wp option delete 'job_board_typography'
wp option delete 'sjb_fonts'
wp option delete 'sjb_quick_apply'
wp option delete 'sjb_view_less_more_btn'
wp option delete 'sjb_loader_image'
wp option delete 'job_board_job_features'
wp option delete 'job_board_apply_for_job'
wp option delete 'job_board_application_form_ph_no_fields_format_disable'
wp option delete 'default_fields_count'
wp option delete 'settings_hr_email'
wp option delete 'settings_admin_email'
wp option delete 'job_board_hr_notification'
wp option delete 'job_board_admin_notification'
wp option delete 'job_board_applicant_notification'
wp option delete 'job_board_category_filter'
wp option delete 'job_board_jobtype_filter'
wp option delete 'job_board_location_filter'
wp option delete 'job_board_search_bar'
wp option delete 'display_job_tags'
wp option delete 'job_board_jobpost_slug'
wp option delete 'job_archives_name'
wp option delete 'job_board_job_category_slug'
wp option delete 'job_board_job_type_slug'
wp option delete 'job_board_job_location_slug'
wp option delete 'sjb_date_format'
wp option delete 'sjb_date_format_text'
wp option delete 'sjb_job_post_page_id'
wp option delete 'delete_data_on_uninstall'
wp option delete 'job_board_privacy_settings'
wp option delete 'job_board_privacy_checkbox_settings'
wp option delete 'job_board_terms_condition_settings'
wp option delete 'sjb_erasure_request_removes_applicant_data'
wp option delete 'job_board_privacy_policy_label'
wp option delete 'job_board_privacy_policy_content'
wp option delete 'job_board_term_conditions_label'
wp option delete 'job_board_term_conditions_content'
wp option delete 'job_file_max_size'
wp option delete 'job_board_all_extensions_check'
wp option delete 'job_board_upload_file_ext'
wp option delete 'job_board_anti_hotlinking'
wp option delete 'job_board_listing_view'
wp option delete 'job_board_allowed_extensions'
wp option delete 'sjb_htaccess_hash'
wp option delete 'elementor_cpt_support'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_crop'"
wp option delete 'sjb_csrf_token_disable'
wp option delete 'sjb_version'
wp option delete 'sjb_update_ui_notice'
wp option delete 'job_privacy_checkbox_settings'

# Delete Transients
wp transient delete 'sjb_addons_extensions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sjb_template_notice_dismissed_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sjb_template_notice_dismissed_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sjb_template_notice_dismissed_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sjb_template_notice_dismissed_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sjb_jobapp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sjb_jobapp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sjb_jobapp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sjb_jobapp_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sjb_enable_single_page_app_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sjb_enable_single_page_app_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sjb_enable_single_page_app_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sjb_enable_single_page_app_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'simple_job_board%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'simple_job_board%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'simple_job_board%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'simple_job_board%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'resume'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'resume'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'resume'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'resume'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'resume_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'resume_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'resume_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'resume_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attachments_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attachments_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attachments_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attachments_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobseeker_phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobseeker_phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobseeker_phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobseeker_phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_job_feature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_job_feature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_job_feature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_job_feature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_vc_js_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_vc_js_status'"
