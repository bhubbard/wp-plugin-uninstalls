-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%inline_deferjs';
DELETE FROM wp_options WHERE option_name LIKE '%version';

