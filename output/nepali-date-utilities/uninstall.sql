-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ndu_today_date_format', 'ndu_convert_post_date', 'ndu_date_format_for_home', 'ndu_date_format');

