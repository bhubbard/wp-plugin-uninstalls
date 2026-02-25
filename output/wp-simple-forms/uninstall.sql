-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpleform-email', 'simpleform-confirmation-message', 'wpsf_db_version');

