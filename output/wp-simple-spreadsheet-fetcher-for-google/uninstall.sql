-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp2s2fg-api-key', 'wp2s2fg-spread-sheet-id');

