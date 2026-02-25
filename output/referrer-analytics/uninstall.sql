-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('referrer_analytics_options', 'referrer_analytics_db_version');

