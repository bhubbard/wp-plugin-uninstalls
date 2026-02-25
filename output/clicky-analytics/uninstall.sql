-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cawp_got_updated', 'cawp_options', 'cawp_version', 'ca_sitekey', 'ca_siteid', 'ca_track_email', 'ca_track_username', 'ca_track_youtube', 'ca_track_html5', 'ca_tracking', 'ca_access', 'ca_disabledashboard', 'ca_frontend', 'ca_track_olp', 'ca_pgd', 'ca_rd', 'ca_sd', 'cawp_network_options');
DELETE FROM wp_options WHERE option_name LIKE '_cawp_cache_%';
DELETE FROM wp_options WHERE option_name LIKE '_cawp_cache_timeout_%';

