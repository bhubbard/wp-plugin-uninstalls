-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loklak-settings', 'loklak_init', 'loklak-settings[loklak_api]', 'fa_twitter_plugin_last_cache_time', 'fa_twitter_plugin_tweets');

