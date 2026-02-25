-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webidextrous_time_delayed_redirects_option', 'webidextrous_time_delayed_redirects_network_option', 'webidextrous_time_delayed_redirects_cache', 'webidextrous_time_delayed_redirects_debug');

