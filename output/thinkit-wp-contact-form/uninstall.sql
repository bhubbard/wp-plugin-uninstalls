-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thinkit_contact_form_version', 'thinkit_recptacha_key', 'lwcf_form_count');
DELETE FROM wp_options WHERE option_name LIKE 'lwcf_form_name_%';
DELETE FROM wp_options WHERE option_name LIKE 'lwcf_form_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'lwcf_form_subject_%';
DELETE FROM wp_options WHERE option_name LIKE 'lwcf_variable_count_%';

