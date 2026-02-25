-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('biz_hours_day_id', 'biz_hours_hour_id', 'biz_hours_range', 'biz_hours_range_hours', 'biz_hours_saturday', 'biz_hours_sunday', 'biz_hours_monday', 'biz_hours_tuesday', 'biz_hours_wednesday', 'biz_hours_thursday', 'biz_hours_friday');

