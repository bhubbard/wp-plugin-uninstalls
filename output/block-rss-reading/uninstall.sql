-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_rss_url', 'blocked_ip_list', 'block_rss_reading');

