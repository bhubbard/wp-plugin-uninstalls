-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcup_promo_link', 'wcup_db_version', 'wcup_donated', 'wcup_nag', 'wcup_show_predictions', 'wcup_group_stats', 'wcup_scoring', 'wcup_countdown_format', 'wcup_browser_locale', 'wcup_match_separator', 'wcup_match_predictions', 'wcup_player_predictions');
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%donated';
DELETE FROM wp_options WHERE option_name LIKE '%nag';
DELETE FROM wp_options WHERE option_name LIKE '%countdown_format';
DELETE FROM wp_options WHERE option_name LIKE '%browser_locale';
DELETE FROM wp_options WHERE option_name LIKE '%show_predictions';
DELETE FROM wp_options WHERE option_name LIKE '%match_separator';
DELETE FROM wp_options WHERE option_name LIKE '%match_predictions';
DELETE FROM wp_options WHERE option_name LIKE '%player_predictions';
DELETE FROM wp_options WHERE option_name LIKE '%group_stats';
DELETE FROM wp_options WHERE option_name LIKE '%created_pages';
DELETE FROM wp_options WHERE option_name LIKE '%scoring';

