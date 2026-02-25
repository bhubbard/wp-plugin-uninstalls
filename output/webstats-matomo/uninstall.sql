-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webstats_matomo_version', 'webstats_matomo_enable_matomo', 'webstats_matomo_enable_proxy', 'webstats_matomo_enable_cookie', 'webstats_matomo_site_id', 'webstats_matomo_matomo_url', 'webstats_matomo_auth_token');

