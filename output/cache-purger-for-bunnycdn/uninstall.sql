-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bunnycdn_api_key', 'bunnycdn_pull_zone', 'bunnycdn_excluded_urls', 'bunnycdn_always_purge', 'bunnycdn_pull_zone_name');
DELETE FROM wp_options WHERE option_name LIKE 'bunnycdn_purge_scheduled_%';

