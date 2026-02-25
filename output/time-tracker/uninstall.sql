-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('time_tracker_sql_result', 'time_tracker_admin_notices', 'time_tracker_install_time', 'time_tracker_categories', 'time_tracker_style', 'time_tracker_version', 'time-tracker-sql-result', 'time_tracker-sql-result', 'time-tracker');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_form', '_mail', '_mail_2', '_messages', '_additional_settings', '_locale', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_form', '_mail', '_mail_2', '_messages', '_additional_settings', '_locale', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_form', '_mail', '_mail_2', '_messages', '_additional_settings', '_locale', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_form', '_mail', '_mail_2', '_messages', '_additional_settings', '_locale', '_wp_page_template');

