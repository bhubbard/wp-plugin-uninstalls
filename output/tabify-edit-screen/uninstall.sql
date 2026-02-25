-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tabify-edit-screen');
DELETE FROM wp_options WHERE option_name LIKE 'tabify_detection_%';

