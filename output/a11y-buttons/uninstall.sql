-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a11y-buttons-load-assets-via-block-json', 'a11y-buttons-custom-high-contrast-css');

