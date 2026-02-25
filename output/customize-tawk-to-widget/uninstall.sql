-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tawktocustomise_settings');
DELETE FROM wp_options WHERE option_name LIKE 'tawktocustomise_custom_time%';

