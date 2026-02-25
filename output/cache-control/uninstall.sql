-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wporg_hide_meta', 'cache_control_singles_mmulti');
DELETE FROM wp_options WHERE option_name LIKE '%_max_age';
DELETE FROM wp_options WHERE option_name LIKE '%_s_maxage';
DELETE FROM wp_options WHERE option_name LIKE '%_staleerror';
DELETE FROM wp_options WHERE option_name LIKE '%_stalereval';
DELETE FROM wp_options WHERE option_name LIKE '%_paged';
DELETE FROM wp_options WHERE option_name LIKE '%_mmulti';

