-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptuit_version', 'wptuit_cache', 'wptuit_username', 'wptuit_statuslink', 'wptuit_tweets', 'wptuit_widget');

