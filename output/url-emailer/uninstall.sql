-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uep_pwd', 'uep_to_email', 'uep_subject', 'uep_bcc_email', 'uep_body', 'uep_from_name', 'uep_from_email');

