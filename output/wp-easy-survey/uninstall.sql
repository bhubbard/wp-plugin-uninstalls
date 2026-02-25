-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpesurvey_extra_options', 'wpes_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpes_answer_options', '_wpes_answer_type_def', '_wpes_issue_final_answer', '_wpes_issue_final_args', '_wpes_survey_expiration_survey', '_wpes_node_parent_id', '_wpes_survey_association', '_wpes_survey_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpes_answer_options', '_wpes_answer_type_def', '_wpes_issue_final_answer', '_wpes_issue_final_args', '_wpes_survey_expiration_survey', '_wpes_node_parent_id', '_wpes_survey_association', '_wpes_survey_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpes_answer_options', '_wpes_answer_type_def', '_wpes_issue_final_answer', '_wpes_issue_final_args', '_wpes_survey_expiration_survey', '_wpes_node_parent_id', '_wpes_survey_association', '_wpes_survey_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpes_answer_options', '_wpes_answer_type_def', '_wpes_issue_final_answer', '_wpes_issue_final_args', '_wpes_survey_expiration_survey', '_wpes_node_parent_id', '_wpes_survey_association', '_wpes_survey_order');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpes_answer_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpes_answer_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpes_answer_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpes_answer_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpes_audit_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpes_audit_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpes_audit_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpes_audit_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpes_survey_print_history_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpes_survey_print_history_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpes_survey_print_history_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpes_survey_print_history_%';

