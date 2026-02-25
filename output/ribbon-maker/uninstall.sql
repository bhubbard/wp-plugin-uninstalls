-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ribbon_maker_url');
DELETE FROM wp_options WHERE option_name LIKE 'ribbon_maker_do_custom%';
DELETE FROM wp_options WHERE option_name LIKE 'ribbon_maker_message%';
DELETE FROM wp_options WHERE option_name LIKE 'ribbon_maker_bgcolor%';
DELETE FROM wp_options WHERE option_name LIKE 'ribbon_maker_fgcolor%';

