-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfjp_mods_enabled', 'sfx-align-menu-right');
DELETE FROM wp_options WHERE option_name LIKE 'sfx-align-menu-right-%';
DELETE FROM wp_options WHERE option_name LIKE '%-version';

