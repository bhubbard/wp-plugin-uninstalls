-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('__ES_SURVEY_base_path', '__ES_SURVEY_base_path_old', '__ES_SURVEY_general_widget', '__ES_SURVEY_home_widget', 'ES_SURVEY_db_version', 'ES_SURVEY_is_installed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_no_of_questions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_no_of_questions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_no_of_questions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_no_of_questions');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ES_SURVEY_options_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ES_SURVEY_options_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ES_SURVEY_options_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ES_SURVEY_options_%';

