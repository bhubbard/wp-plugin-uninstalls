-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hdq_a_l_members_only', 'hdq_quiz_results_l');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hdq_quiz_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('hdq_quiz_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('hdq_quiz_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hdq_quiz_type');

