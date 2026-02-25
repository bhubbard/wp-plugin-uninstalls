-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stmsb_booking_timezone', 'stmsb_display_date_format', 'stmsb_display_time_format', 'stmsb_display_rows', 'stmsb_custom_css', 'stmsb_db_version', 'stmsb_display_date_Format', 'stmsb_display_time_Format');

