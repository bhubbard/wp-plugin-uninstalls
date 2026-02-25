-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twitter_update_interval', 'twitter_users_per_update', 'twitter_ajax_refresh_interval');

