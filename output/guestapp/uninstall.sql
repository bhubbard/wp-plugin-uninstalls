-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('guestsuite_api_key', 'guestsuite_cron_etat', 'guestsuite_debug', 'guestsuite_cron_frequence', 'guestsuite_last_import_message', 'guestsuite_last_import_code', 'import_completed', 'import_in_progress', 'guestsuite_import_state', 'guestsuite_import_initial_count', 'import_started_at', 'guestsuite_api_version', 'gs_api_key', 'gs_cron_etat', 'gs_cron_frequence', 'gs_debug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gs_establishments_id', 'gs_locationUuid', 'gs_establishments_name', 'gs_user_name', 'gs_global_rate', 'gs_comment', 'gs_publication_date', 'gs_language_code', 'gs_reviewUuid', 'gs_guestapp_id', 'gs_responses', 'gs_experience_date', 'gs_unique_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('gs_establishments_id', 'gs_locationUuid', 'gs_establishments_name', 'gs_user_name', 'gs_global_rate', 'gs_comment', 'gs_publication_date', 'gs_language_code', 'gs_reviewUuid', 'gs_guestapp_id', 'gs_responses', 'gs_experience_date', 'gs_unique_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('gs_establishments_id', 'gs_locationUuid', 'gs_establishments_name', 'gs_user_name', 'gs_global_rate', 'gs_comment', 'gs_publication_date', 'gs_language_code', 'gs_reviewUuid', 'gs_guestapp_id', 'gs_responses', 'gs_experience_date', 'gs_unique_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gs_establishments_id', 'gs_locationUuid', 'gs_establishments_name', 'gs_user_name', 'gs_global_rate', 'gs_comment', 'gs_publication_date', 'gs_language_code', 'gs_reviewUuid', 'gs_guestapp_id', 'gs_responses', 'gs_experience_date', 'gs_unique_token');

