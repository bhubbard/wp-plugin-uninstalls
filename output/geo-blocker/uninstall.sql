-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('medshi_geo_block_dashboard_stats', 'medshi_geo_block_logs_summary', 'medshi_geo_export_all_logs');

