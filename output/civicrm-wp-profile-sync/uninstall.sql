-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwps_acf_acfe_form_action_activity', 'cwps_acf_acfe_form_action_case', 'cwps_acf_acfe_form_action_contact', 'cwps_acf_acfe_form_action_event', 'cwps_acf_acfe_form_action_participant');
DELETE FROM wp_options WHERE option_name LIKE '%_offset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname');

