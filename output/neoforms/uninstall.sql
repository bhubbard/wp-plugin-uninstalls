-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('neo_global_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('neo_form_id', 'neoforms_formdata', 'neoforms_form_settings', 'neo_submission_times');
DELETE FROM wp_usermeta WHERE meta_key IN ('neo_form_id', 'neoforms_formdata', 'neoforms_form_settings', 'neo_submission_times');
DELETE FROM wp_termmeta WHERE meta_key IN ('neo_form_id', 'neoforms_formdata', 'neoforms_form_settings', 'neo_submission_times');
DELETE FROM wp_commentmeta WHERE meta_key IN ('neo_form_id', 'neoforms_formdata', 'neoforms_form_settings', 'neo_submission_times');

