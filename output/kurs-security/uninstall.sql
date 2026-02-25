-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kurs_security_disable_rest_api', 'kurs_security_disable_rest_api_guests', 'kurs_security_disable_xmlrpc', 'kurs_security_disable_file_editor', 'kurs_security_redirect_failed_login', 'kurs_security_hide_wp_version');

