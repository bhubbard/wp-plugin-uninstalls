-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nos_logging', 'nos_selected_status', 'novarum_osc_license_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('input_nos_background_color', 'input_nos_color', 'select_status_from', 'select_status_to', 'select_action', 'input_nos_email_to', 'input_nos_email_subject', 'input_nos_email_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('input_nos_background_color', 'input_nos_color', 'select_status_from', 'select_status_to', 'select_action', 'input_nos_email_to', 'input_nos_email_subject', 'input_nos_email_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('input_nos_background_color', 'input_nos_color', 'select_status_from', 'select_status_to', 'select_action', 'input_nos_email_to', 'input_nos_email_subject', 'input_nos_email_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('input_nos_background_color', 'input_nos_color', 'select_status_from', 'select_status_to', 'select_action', 'input_nos_email_to', 'input_nos_email_subject', 'input_nos_email_content');

