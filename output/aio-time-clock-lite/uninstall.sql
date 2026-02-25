-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aio_wage_manage', 'aio_company_name', 'aio_timeclock_redirect_employees', 'aio_time_clock_lite_update_redirect', 'aio_pay_schedule', 'aio_timeclock_text_align', 'aio_timeclock_show_avatar', 'aio_tc_lite_widgettitle', 'aio_time_clock_lite_widget_title');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('employee_clock_in_time', 'employee_clock_out_time', 'department', 'ip_address_in', 'ip_address_out');
DELETE FROM wp_usermeta WHERE meta_key IN ('employee_clock_in_time', 'employee_clock_out_time', 'department', 'ip_address_in', 'ip_address_out');
DELETE FROM wp_termmeta WHERE meta_key IN ('employee_clock_in_time', 'employee_clock_out_time', 'department', 'ip_address_in', 'ip_address_out');
DELETE FROM wp_commentmeta WHERE meta_key IN ('employee_clock_in_time', 'employee_clock_out_time', 'department', 'ip_address_in', 'ip_address_out');

