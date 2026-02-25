-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-gridsize';
DELETE FROM wp_options WHERE option_name LIKE '%-thumbwidth';
DELETE FROM wp_options WHERE option_name LIKE '%-thumbheight';

