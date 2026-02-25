-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssp_stats_version', 'ssp_stats_show_crawler_update_notice', 'ssp_stats_db_version', 'active_sitewide_plugins', 'ssp_version');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

