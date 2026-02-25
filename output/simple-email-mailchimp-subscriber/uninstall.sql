-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmsems_upgrade_v1', 'whitelist_options', 'wpmsems_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpmsems_first_name', 'wpmsems_last_name', 'wpmsems_dob', 'wpmsems_email', 'wpmsems_phone', 'wpmsems_address', 'wpmsems_form_cat', 'wpmsems_camp', 'wpmsems_form_type', 'wpmsems_form_id', 'wpmsems_subs_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpmsems_first_name', 'wpmsems_last_name', 'wpmsems_dob', 'wpmsems_email', 'wpmsems_phone', 'wpmsems_address', 'wpmsems_form_cat', 'wpmsems_camp', 'wpmsems_form_type', 'wpmsems_form_id', 'wpmsems_subs_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpmsems_first_name', 'wpmsems_last_name', 'wpmsems_dob', 'wpmsems_email', 'wpmsems_phone', 'wpmsems_address', 'wpmsems_form_cat', 'wpmsems_camp', 'wpmsems_form_type', 'wpmsems_form_id', 'wpmsems_subs_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpmsems_first_name', 'wpmsems_last_name', 'wpmsems_dob', 'wpmsems_email', 'wpmsems_phone', 'wpmsems_address', 'wpmsems_form_cat', 'wpmsems_camp', 'wpmsems_form_type', 'wpmsems_form_id', 'wpmsems_subs_status');

