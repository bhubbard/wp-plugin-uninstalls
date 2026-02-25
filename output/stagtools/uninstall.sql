-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stag_options', 'stagtools_settings_general', 'stagtools_settings_social', 'twitterwptoken', 'stag_custom_sidebars', 'stag_twitter_widget_tweets', 'stag_twitter_widget_last_cache', 'codestag_themes_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stag_team_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stag_team_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stag_team_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stag_team_info');

