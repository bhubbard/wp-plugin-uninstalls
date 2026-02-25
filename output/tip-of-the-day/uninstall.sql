-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('totd_options', 'oqp_info');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('totd_hidden_tips', 'totd_hidable', 'totd_question', 'question_answer');
DELETE FROM wp_usermeta WHERE meta_key IN ('totd_hidden_tips', 'totd_hidable', 'totd_question', 'question_answer');
DELETE FROM wp_termmeta WHERE meta_key IN ('totd_hidden_tips', 'totd_hidable', 'totd_question', 'question_answer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('totd_hidden_tips', 'totd_hidable', 'totd_question', 'question_answer');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_answer';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_answer';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_answer';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_answer';

