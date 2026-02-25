-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('euro2012_db_version', 'euro2012_promo_link', 'euro2012_group_stats', 'euro2012_scoring', 'euro2012_countdown_format', 'euro2012_browser_locale');
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%donated';
DELETE FROM wp_options WHERE option_name LIKE '%nag';
DELETE FROM wp_options WHERE option_name LIKE '%show_predictions';
DELETE FROM wp_options WHERE option_name LIKE '%promo_link';
DELETE FROM wp_options WHERE option_name LIKE '%countdown_format';
DELETE FROM wp_options WHERE option_name LIKE '%browser_locale';
DELETE FROM wp_options WHERE option_name LIKE '%group_stats';
DELETE FROM wp_options WHERE option_name LIKE '%scoring';

