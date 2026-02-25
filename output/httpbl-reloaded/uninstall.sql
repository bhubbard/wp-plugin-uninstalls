-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('httpbl_reloaded_options');
DELETE FROM wp_options WHERE option_name LIKE 'httpblr_%';

