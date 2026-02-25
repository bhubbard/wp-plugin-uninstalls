-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pipdig_bloglovin_plugin_url', 'pipdig_bloglovin_follower_count');

