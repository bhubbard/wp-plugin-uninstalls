-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wprd-revision-control', 'wprd_norev', 'wprd_settings_errors');

