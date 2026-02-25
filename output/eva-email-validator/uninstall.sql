-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eva-api-error', 'eva_settings', 'eva-api-key-invalid');

