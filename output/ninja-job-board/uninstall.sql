-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpjobboard_confirmation_page_id', 'wpjobboard_upload_dir', 'wpjobboard_ip_logging_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpjobboard_show_title_description', 'jobboard_confirmation_settings', 'wpjobboard_application_builder_settings', 'wpjobboard_submit_button_settings', 'wpjobboard_form_design_settings', 'application_end_timestamp', 'wpjb_email_notifications', 'job_experince_text', 'job_type', 'wpjb_form_scheduling_settings', 'job_location', 'job_vacancies', 'application_start_date', 'application_end_date', 'application_start_timestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpjobboard_show_title_description', 'jobboard_confirmation_settings', 'wpjobboard_application_builder_settings', 'wpjobboard_submit_button_settings', 'wpjobboard_form_design_settings', 'application_end_timestamp', 'wpjb_email_notifications', 'job_experince_text', 'job_type', 'wpjb_form_scheduling_settings', 'job_location', 'job_vacancies', 'application_start_date', 'application_end_date', 'application_start_timestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpjobboard_show_title_description', 'jobboard_confirmation_settings', 'wpjobboard_application_builder_settings', 'wpjobboard_submit_button_settings', 'wpjobboard_form_design_settings', 'application_end_timestamp', 'wpjb_email_notifications', 'job_experince_text', 'job_type', 'wpjb_form_scheduling_settings', 'job_location', 'job_vacancies', 'application_start_date', 'application_end_date', 'application_start_timestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpjobboard_show_title_description', 'jobboard_confirmation_settings', 'wpjobboard_application_builder_settings', 'wpjobboard_submit_button_settings', 'wpjobboard_form_design_settings', 'application_end_timestamp', 'wpjb_email_notifications', 'job_experince_text', 'job_type', 'wpjb_form_scheduling_settings', 'job_location', 'job_vacancies', 'application_start_date', 'application_end_date', 'application_start_timestamp');

