-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prayer_times_method', 'prayer_times_address', 'prayer_times_school', 'prayer_times_latitude_adjustment_method', 'prayer_times_display_format', 'prayer_times_display_header_bg', 'prayer_times_display_header_text', 'prayer_times_display_row_bg', 'prayer_times_display_row_text', 'prayer_times_display_heading', 'prayer_times_display_heading_bg', 'prayer_times_display_heading_text', 'prayer_times_override_fajr', 'prayer_times_override_dhuhr', 'prayer_times_override_asr', 'prayer_times_override_maghrib', 'prayer_times_override_isha');

