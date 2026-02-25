-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple-email-form-version', 'se-options', 'simple-email-form-options');

