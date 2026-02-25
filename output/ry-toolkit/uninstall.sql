-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ry-notice', 'doing_cron', 'ry_analyzed_table', 'ry_optimized_table', 'ry_export_data');

