-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('salespopup_mobile_support', 'salespopup_start_time', 'salespopup_showing_time', 'salespopup_gap_time', 'salespopup_admin_support', 'salespopup_frequent_count', 'salespopup_change_user_name', 'salespopup_freeze_notification', 'salespopup_front_end_support', 'salespopup_csv_data', 'salespopup_notification_bg_color', 'salespopup_upload_status');

