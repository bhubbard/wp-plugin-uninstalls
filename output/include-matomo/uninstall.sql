-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('matomo_url', 'matomo_site_id', 'matomo_disable_cookies', 'matomo_rss_campaign', 'matomo_rss_source');

