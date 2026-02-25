-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_edw_position', '_edw_cache', '_edw_fontawesome', 'edw_show_list', 'edw_save_date_order', '_edw_holidays_dates', '_edw_mode', '_edw_max_days_outstock', '_edw_days_outstock', '_edw_disabled_days', '_edw_max_days_backorders', '_edw_days_backorders', '_edw_days', '_edw_max_days', '_edw_same_day', '_edw_max_hour', '_edw_relative_dates', '_edw_date_format_1_0', '_edw_date_format_1_1', '_edw_date_format_2_0', '_edw_date_format_2_1', '_edw_date_format_3_0', '_edw_date_format_3_1', '_edw_icon', 'estimated-delivery-newsletter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edw_disabled_days', '_edw_max_days', '_edw_days', '_edw_days_outstock', '_edw_max_days_outstock', '_edw_mode', '_edw_days_backorders', '_edw_max_days_backorders', '_edw_overwrite');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edw_disabled_days', '_edw_max_days', '_edw_days', '_edw_days_outstock', '_edw_max_days_outstock', '_edw_mode', '_edw_days_backorders', '_edw_max_days_backorders', '_edw_overwrite');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edw_disabled_days', '_edw_max_days', '_edw_days', '_edw_days_outstock', '_edw_max_days_outstock', '_edw_mode', '_edw_days_backorders', '_edw_max_days_backorders', '_edw_overwrite');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edw_disabled_days', '_edw_max_days', '_edw_days', '_edw_days_outstock', '_edw_max_days_outstock', '_edw_mode', '_edw_days_backorders', '_edw_max_days_backorders', '_edw_overwrite');

