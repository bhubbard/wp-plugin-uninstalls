-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('version', 'dessky_security_admin_footer_text_rated');
DELETE FROM wp_options WHERE option_name LIKE 'dessky_security_%';

