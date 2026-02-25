-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('calendar_setting_header_bg', 'calendar_setting_days_bg', 'calendar_setting_link_bg', 'calendar_setting_single', 'calendar_setting_gcal');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('meta_calendar_date', 'meta_calendar_start', 'meta_calendar_end', 'meta_calendar_location', 'meta_calendar_description', 'meta_calendar_month', 'meta_calendar_year', 'meta_calendar_dateFormatted');
DELETE FROM wp_usermeta WHERE meta_key IN ('meta_calendar_date', 'meta_calendar_start', 'meta_calendar_end', 'meta_calendar_location', 'meta_calendar_description', 'meta_calendar_month', 'meta_calendar_year', 'meta_calendar_dateFormatted');
DELETE FROM wp_termmeta WHERE meta_key IN ('meta_calendar_date', 'meta_calendar_start', 'meta_calendar_end', 'meta_calendar_location', 'meta_calendar_description', 'meta_calendar_month', 'meta_calendar_year', 'meta_calendar_dateFormatted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('meta_calendar_date', 'meta_calendar_start', 'meta_calendar_end', 'meta_calendar_location', 'meta_calendar_description', 'meta_calendar_month', 'meta_calendar_year', 'meta_calendar_dateFormatted');

