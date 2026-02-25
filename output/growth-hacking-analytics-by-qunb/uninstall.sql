-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qunb_ga_token', 'qunb_ga_refresh_token', 'qunb_gp_emails', 'qunb_ga_profile', 'qunb_ga_profile_label', 'qunb_ga_profile_timezone', 'qunb_ga_web_property', 'qunb_ga_account', 'qunb_ghost_avg', 'qunb_ghost_avg_cumul', 'qunb_facebook_url', 'qunb_facebook_likes', 'qunb_twitter_screen_name', 'qunb_twitter_followers', 'qunb_nb_connections', 'qunb_test', 'qunb_cron_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pageViews_cumul', 'pageViews');
DELETE FROM wp_usermeta WHERE meta_key IN ('pageViews_cumul', 'pageViews');
DELETE FROM wp_termmeta WHERE meta_key IN ('pageViews_cumul', 'pageViews');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pageViews_cumul', 'pageViews');

