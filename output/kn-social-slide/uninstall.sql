-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kn_socialslide_version', 'kn_socialslide_facebook', 'kn_socialslide_twitter', 'kn_socialslide_googleplus', 'kn_socialslide_feedburner', 'kn_socialslide_kakinetwork', 'kn_socialslide_facebook_position', 'kn_socialslide_twitter_position', 'kn_socialslide_googleplus_position', 'kn_socialslide_feedburner_position', 'kn_socialslide_kakinetwork_position', 'kn_socialslide_facebook_top', 'kn_socialslide_twitter_top', 'kn_socialslide_googleplus_top', 'kn_socialslide_feedburner_top', 'kn_socialslide_kakinetwork_top', 'kn_socialslide_facebook_id', 'kn_socialslide_twitter_id', 'kn_socialslide_googleplus_id', 'kn_socialslide_feedburner_id', 'kn_socialslide_kakinetwork_auto_open', 'kn_socialslide_twitter_show', 'kn_socialslide_noConflict');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_facebook';
DELETE FROM wp_options WHERE option_name LIKE '%_twitter';
DELETE FROM wp_options WHERE option_name LIKE '%_googleplus';
DELETE FROM wp_options WHERE option_name LIKE '%_feedburner';
DELETE FROM wp_options WHERE option_name LIKE '%_kakinetwork';
DELETE FROM wp_options WHERE option_name LIKE '%_facebook_position';
DELETE FROM wp_options WHERE option_name LIKE '%_twitter_position';
DELETE FROM wp_options WHERE option_name LIKE '%_googleplus_position';
DELETE FROM wp_options WHERE option_name LIKE '%_feedburner_position';
DELETE FROM wp_options WHERE option_name LIKE '%_kakinetwork_position';
DELETE FROM wp_options WHERE option_name LIKE '%_facebook_top';
DELETE FROM wp_options WHERE option_name LIKE '%_twitter_top';
DELETE FROM wp_options WHERE option_name LIKE '%_googleplus_top';
DELETE FROM wp_options WHERE option_name LIKE '%_feedburner_top';
DELETE FROM wp_options WHERE option_name LIKE '%_kakinetwork_top';
DELETE FROM wp_options WHERE option_name LIKE '%_facebook_id';
DELETE FROM wp_options WHERE option_name LIKE '%_twitter_id';
DELETE FROM wp_options WHERE option_name LIKE '%_googleplus_id';
DELETE FROM wp_options WHERE option_name LIKE '%_feedburner_id';
DELETE FROM wp_options WHERE option_name LIKE '%_kakinetwork_auto_open';
DELETE FROM wp_options WHERE option_name LIKE '%_twitter_show';
DELETE FROM wp_options WHERE option_name LIKE '%_noConflict';

