-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp-vote-ballot_voters', 'question_ballot_select', '_wp_page_template', 'field_test_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp-vote-ballot_voters', 'question_ballot_select', '_wp_page_template', 'field_test_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp-vote-ballot_voters', 'question_ballot_select', '_wp_page_template', 'field_test_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp-vote-ballot_voters', 'question_ballot_select', '_wp_page_template', 'field_test_field');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_footer';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_footer';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_footer';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_footer';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_conditions';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_conditions';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_conditions';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_conditions';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_add_signature';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_add_signature';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_add_signature';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_add_signature';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_add_signature_text';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_add_signature_text';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_add_signature_text';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_add_signature_text';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';

