-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'gimb_google_key_%';
DELETE FROM wp_options WHERE option_name LIKE 'gimb_restrict_%';

