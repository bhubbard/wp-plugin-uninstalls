-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'vhp_varnish_url', 'vhp_varnish_ip', 'vhp_varnish_max_posts_before_all');

