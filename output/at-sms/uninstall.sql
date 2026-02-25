-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('at_sms_do_activation_redirect', 'at_sms_database_version', 'at_sms_contact_groups', 'at_sms_options');

