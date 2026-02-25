-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emw_mom_allowed_statuses', 'emw_mom_email_subject', 'emw_mom_admin_email', 'emw_mom_cc_email', 'emw_mom_email_template', 'emw_mom_criteria_settings', 'emw_mom_rest_api_enabled', 'emw_mom_rest_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('multipleorders');
DELETE FROM wp_usermeta WHERE meta_key IN ('multipleorders');
DELETE FROM wp_termmeta WHERE meta_key IN ('multipleorders');
DELETE FROM wp_commentmeta WHERE meta_key IN ('multipleorders');

