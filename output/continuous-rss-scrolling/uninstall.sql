-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crs_rss_url', 'crs_display_width', 'crs_display_count', 'crs_record_height', 'crs_speed', 'crs_waitseconds', 'crs_title');

