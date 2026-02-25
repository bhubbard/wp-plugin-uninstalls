-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('visitor_analytics_io', 'visitor_analytics_migration_done', 'visitor_analytics_site_id', 'visitor_analytics_version', 'visitor_analytics_io_iframe');

