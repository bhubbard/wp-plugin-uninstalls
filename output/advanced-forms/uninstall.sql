-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('entry_form', 'form_key', 'entry_submission_date', 'form_create_entries', 'form_num_of_views', 'form_num_of_submissions');
DELETE FROM wp_usermeta WHERE meta_key IN ('entry_form', 'form_key', 'entry_submission_date', 'form_create_entries', 'form_num_of_views', 'form_num_of_submissions');
DELETE FROM wp_termmeta WHERE meta_key IN ('entry_form', 'form_key', 'entry_submission_date', 'form_create_entries', 'form_num_of_views', 'form_num_of_submissions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('entry_form', 'form_key', 'entry_submission_date', 'form_create_entries', 'form_num_of_views', 'form_num_of_submissions');

