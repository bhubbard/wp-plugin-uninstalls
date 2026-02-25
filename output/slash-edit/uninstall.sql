-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slash_edit_install', 'slash_edit_version');
DELETE FROM wp_options WHERE option_name LIKE 'slash_edit_token_%';

