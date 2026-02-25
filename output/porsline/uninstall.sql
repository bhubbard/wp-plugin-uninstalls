-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prsline_token', 'prsline_location');
DELETE FROM wp_options WHERE option_name LIKE 'prs_%';

