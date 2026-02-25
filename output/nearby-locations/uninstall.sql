-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ajf-nl-google-api-key', 'ajf-nl-center-address', 'ajf-nl-color-background', 'ajf-nl-color-panel', 'ajf-nl-color-text', 'ajf-nl-version');

