-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oras_option_name', 'oras_api', 'oras_languague', 'oras_privacy_link');

