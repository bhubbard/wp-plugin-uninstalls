-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gravity_forms_cc_valid_api', 'gravityforms_cc_migrated', 'gf_constantcontact_settings', 'gf_constantcontact_migrated', 'gf_constantcontact_version', 'gravity_forms_cc_valid_api');
DELETE FROM wp_options WHERE option_name LIKE 'gf_ctct_lists_%';

