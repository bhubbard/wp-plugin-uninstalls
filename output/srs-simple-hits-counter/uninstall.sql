-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('migrated_to_version', 'srs_pageViews_count', 'srs_visitors_count', 'srs_update_ran', 'srs_simple_hits_counter_version', 'srs_pageViews_number_format_count');

