-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cau_db_version', 'cau_redirectToWelcomeScreen');

