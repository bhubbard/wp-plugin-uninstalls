-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Shortcodes_Ultimate_Plugin_Not_Activated', 'su/generator/popup', 'su/generator/settings/pdf');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

