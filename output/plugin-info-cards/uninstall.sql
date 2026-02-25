-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'pic_plugin_%';
DELETE FROM wp_options WHERE option_name LIKE 'pic_author_%';

