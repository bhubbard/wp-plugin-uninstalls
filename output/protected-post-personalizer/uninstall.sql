-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('password-protected-prefix', 'private-prefix', 'custom-preview-text', 'password-form-prefix', 'password-form-submit', 'passworded-preview-type', 'password-form-css');

