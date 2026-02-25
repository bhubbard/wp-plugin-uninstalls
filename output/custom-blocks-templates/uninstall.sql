-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbt_registered_stylesheets');
DELETE FROM wp_options WHERE option_name LIKE 'cbt_template_%';
DELETE FROM wp_options WHERE option_name LIKE 'cbt_editable_%';

