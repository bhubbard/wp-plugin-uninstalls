-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfront_global_settings', 'sm_admin_notices', 'wpfrontend_pages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpfront_form_id', 'wpfront_formdata', 'wpfront_form_settings', 'wpfront_submission_times', '_wpfrontend_submission_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpfront_form_id', 'wpfront_formdata', 'wpfront_form_settings', 'wpfront_submission_times', '_wpfrontend_submission_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpfront_form_id', 'wpfront_formdata', 'wpfront_form_settings', 'wpfront_submission_times', '_wpfrontend_submission_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpfront_form_id', 'wpfront_formdata', 'wpfront_form_settings', 'wpfront_submission_times', '_wpfrontend_submission_id');

