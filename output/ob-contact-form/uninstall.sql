-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('obcf_to_email', 'obcf_from_email', 'obcf_from_name', 'obcf_form_subject', 'obcf_form_success', 'obcf_form_error');

