-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tintcal_categories', 'tintcal_start_day', 'tintcal_header_color', 'tintcal_enable_holidays', 'tintcal_holiday_color', 'tintcal_show_header_weekend_color', 'tintcal_show_sunday_color', 'tintcal_sunday_color', 'tintcal_show_saturday_color', 'tintcal_saturday_color', 'tintcal_show_legend', 'tintcal_show_today_button', 'tintcal_role_permissions', 'tintcal_date_categories');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tintcal_start_day', '_tintcal_header_color', '_tintcal_enable_holidays', '_tintcal_holiday_color', '_tintcal_show_header_weekend_color', '_tintcal_show_sunday_color', '_tintcal_sunday_color', '_tintcal_show_saturday_color', '_tintcal_saturday_color', '_tintcal_show_legend', '_tintcal_show_today_button', '_tintcal_visible_categories', '_tintcal_settings_initialized');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tintcal_start_day', '_tintcal_header_color', '_tintcal_enable_holidays', '_tintcal_holiday_color', '_tintcal_show_header_weekend_color', '_tintcal_show_sunday_color', '_tintcal_sunday_color', '_tintcal_show_saturday_color', '_tintcal_saturday_color', '_tintcal_show_legend', '_tintcal_show_today_button', '_tintcal_visible_categories', '_tintcal_settings_initialized');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tintcal_start_day', '_tintcal_header_color', '_tintcal_enable_holidays', '_tintcal_holiday_color', '_tintcal_show_header_weekend_color', '_tintcal_show_sunday_color', '_tintcal_sunday_color', '_tintcal_show_saturday_color', '_tintcal_saturday_color', '_tintcal_show_legend', '_tintcal_show_today_button', '_tintcal_visible_categories', '_tintcal_settings_initialized');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tintcal_start_day', '_tintcal_header_color', '_tintcal_enable_holidays', '_tintcal_holiday_color', '_tintcal_show_header_weekend_color', '_tintcal_show_sunday_color', '_tintcal_sunday_color', '_tintcal_show_saturday_color', '_tintcal_saturday_color', '_tintcal_show_legend', '_tintcal_show_today_button', '_tintcal_visible_categories', '_tintcal_settings_initialized');

