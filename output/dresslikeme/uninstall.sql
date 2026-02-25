-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dlm-hideprices', 'dlm-name', 'dlm-color', 'dlm-api-key');

