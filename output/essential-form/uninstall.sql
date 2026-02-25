-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('essential_form');
DELETE FROM wp_options WHERE option_name LIKE 'essential_form_key_%';

