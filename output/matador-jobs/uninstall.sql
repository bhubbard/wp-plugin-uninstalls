-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bullhorn_api_credentials', 'matador_advanced_applications', 'matador_activated', 'matador_ET_last_phone_home', 'bullhorn_settings', 'bullhorn_api_access', 'active_sitewide_plugins', 'matador_extension_leads_enabled', 'matador_bullhorn_Candidate_consentMgmt_object', 'matador_upgrade_email', 'matador_activity_log_delete_logs', 'matador_ET_daily_instance_report', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'matador_import_categories_job_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_matador_source_date_modified', '_matador_source_id', '_matador_synced_meta_keys', 'bullhorn_street', 'bullhorn_city', 'bullhorn_state', 'bullhorn_country', 'bullhorn_zip', 'bullhorn_job_location', 'job_general_location', 'isRemote', 'salary_low_value', 'salary_high_value', 'salary', 'salaryUnit', 'salary_currency', 'jsonld', '_matador_source', 'owner', 'responseUser', 'assignedUsers', '_application_data', '_bullhorn_candidate_data', 'bullhorn_job_id', 'isHybrid');
DELETE FROM wp_usermeta WHERE meta_key IN ('_matador_source_date_modified', '_matador_source_id', '_matador_synced_meta_keys', 'bullhorn_street', 'bullhorn_city', 'bullhorn_state', 'bullhorn_country', 'bullhorn_zip', 'bullhorn_job_location', 'job_general_location', 'isRemote', 'salary_low_value', 'salary_high_value', 'salary', 'salaryUnit', 'salary_currency', 'jsonld', '_matador_source', 'owner', 'responseUser', 'assignedUsers', '_application_data', '_bullhorn_candidate_data', 'bullhorn_job_id', 'isHybrid');
DELETE FROM wp_termmeta WHERE meta_key IN ('_matador_source_date_modified', '_matador_source_id', '_matador_synced_meta_keys', 'bullhorn_street', 'bullhorn_city', 'bullhorn_state', 'bullhorn_country', 'bullhorn_zip', 'bullhorn_job_location', 'job_general_location', 'isRemote', 'salary_low_value', 'salary_high_value', 'salary', 'salaryUnit', 'salary_currency', 'jsonld', '_matador_source', 'owner', 'responseUser', 'assignedUsers', '_application_data', '_bullhorn_candidate_data', 'bullhorn_job_id', 'isHybrid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_matador_source_date_modified', '_matador_source_id', '_matador_synced_meta_keys', 'bullhorn_street', 'bullhorn_city', 'bullhorn_state', 'bullhorn_country', 'bullhorn_zip', 'bullhorn_job_location', 'job_general_location', 'isRemote', 'salary_low_value', 'salary_high_value', 'salary', 'salaryUnit', 'salary_currency', 'jsonld', '_matador_source', 'owner', 'responseUser', 'assignedUsers', '_application_data', '_bullhorn_candidate_data', 'bullhorn_job_id', 'isHybrid');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'bullhorn_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'bullhorn_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'bullhorn_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bullhorn_%';

