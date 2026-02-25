-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jobwp_cpt_slug', 'jobwp_plugin_settings_have_changed', 'jobwp_single_item_order_list', 'jobwp_apply_form_content', 'jobwp_apply_form_style', 'jobwp_email_settings', 'jobwp_general_settings', 'jobwp_listing_content', 'jobwp_listing_styles', 'jobwp_search_content', 'jobwp_search_styles', 'jobwp_single_content', 'jobwp_single_styles', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'jobwp_flush_rewrite_rules_flag', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jobwp_experience', 'jobwp_vacancies', 'jobwp_nature', 'jobwp_level', 'jobwp_location', 'jobwp_edu_req', 'jobwp_deadline', 'jobwp_status', 'jobwp_application_url', 'jobwp_company', 'jobwp_is_featured_job', 'jobwp_responsibilities', 'jobwp_skills', 'jobwp_add_req', 'jobwp_salary', 'jobwp_other_benefits');
DELETE FROM wp_usermeta WHERE meta_key IN ('jobwp_experience', 'jobwp_vacancies', 'jobwp_nature', 'jobwp_level', 'jobwp_location', 'jobwp_edu_req', 'jobwp_deadline', 'jobwp_status', 'jobwp_application_url', 'jobwp_company', 'jobwp_is_featured_job', 'jobwp_responsibilities', 'jobwp_skills', 'jobwp_add_req', 'jobwp_salary', 'jobwp_other_benefits');
DELETE FROM wp_termmeta WHERE meta_key IN ('jobwp_experience', 'jobwp_vacancies', 'jobwp_nature', 'jobwp_level', 'jobwp_location', 'jobwp_edu_req', 'jobwp_deadline', 'jobwp_status', 'jobwp_application_url', 'jobwp_company', 'jobwp_is_featured_job', 'jobwp_responsibilities', 'jobwp_skills', 'jobwp_add_req', 'jobwp_salary', 'jobwp_other_benefits');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jobwp_experience', 'jobwp_vacancies', 'jobwp_nature', 'jobwp_level', 'jobwp_location', 'jobwp_edu_req', 'jobwp_deadline', 'jobwp_status', 'jobwp_application_url', 'jobwp_company', 'jobwp_is_featured_job', 'jobwp_responsibilities', 'jobwp_skills', 'jobwp_add_req', 'jobwp_salary', 'jobwp_other_benefits');

