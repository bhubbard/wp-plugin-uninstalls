-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qform_main_token', 'qform_form_errors', 'qform_form_success');

