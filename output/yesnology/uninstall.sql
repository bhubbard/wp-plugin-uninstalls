-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yesnology_secretkey', 'yesnology_username', 'yesnology_password', 'yesnology_tenatId', 'yesnology_companyId', 'yesnology_clientId', 'yesnology_secretKey', 'yesnology_companySelect', 'yesnology_bodyColor', 'yesnology_textColor', 'yesnology_buttonPosition', 'yesnology_submit_confirm');

