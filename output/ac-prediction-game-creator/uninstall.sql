-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_redirection_url', 'custom_redirection_enabled', 'acpgc_feedback_message', 'acpgc_feedback_type');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acpgc_user_score', 'first_name', 'last_name', '_acpgc_all_questions_answered', '_acpgc_round_calculated', 'custom_avatar', 'league_owner');
DELETE FROM wp_usermeta WHERE meta_key IN ('acpgc_user_score', 'first_name', 'last_name', '_acpgc_all_questions_answered', '_acpgc_round_calculated', 'custom_avatar', 'league_owner');
DELETE FROM wp_termmeta WHERE meta_key IN ('acpgc_user_score', 'first_name', 'last_name', '_acpgc_all_questions_answered', '_acpgc_round_calculated', 'custom_avatar', 'league_owner');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acpgc_user_score', 'first_name', 'last_name', '_acpgc_all_questions_answered', '_acpgc_round_calculated', 'custom_avatar', 'league_owner');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'include_question_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'include_question_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'include_question_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'include_question_%';

