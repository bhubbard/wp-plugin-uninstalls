-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%enabled';
DELETE FROM wp_options WHERE option_name LIKE '%quality';
DELETE FROM wp_options WHERE option_name LIKE '%max_w';

