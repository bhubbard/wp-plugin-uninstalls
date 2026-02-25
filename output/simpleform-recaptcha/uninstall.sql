-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sform_recaptcha_version', 'sform_settings', 'sform_attributes', 'sform_version_alert');
DELETE FROM wp_options WHERE option_name LIKE 'sform_%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_attributes';

