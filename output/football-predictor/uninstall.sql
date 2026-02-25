-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fp_adjust_knockout', 'fp_db_version', 'fp_promo_link', 'fp_group_stats', 'fp_scoring', 'fp_countdown_format', 'fp_browser_locale');
DELETE FROM wp_options WHERE option_name LIKE '%show_predictions';
DELETE FROM wp_options WHERE option_name LIKE '%promo_link';
DELETE FROM wp_options WHERE option_name LIKE '%countdown_format';
DELETE FROM wp_options WHERE option_name LIKE '%browser_locale';
DELETE FROM wp_options WHERE option_name LIKE '%adjust_knockout';
DELETE FROM wp_options WHERE option_name LIKE '%match_predictions';
DELETE FROM wp_options WHERE option_name LIKE '%user_predictions';
DELETE FROM wp_options WHERE option_name LIKE '%nag';
DELETE FROM wp_options WHERE option_name LIKE '%group_stats';
DELETE FROM wp_options WHERE option_name LIKE '%scoring';
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%match_separator';

