-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('investi-apikey', 'investi-apikey-saved', 'investi-do-not-add-css');

