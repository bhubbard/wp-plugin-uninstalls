-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rb_daily_mileage_allow', 'rb_weekly_mileage_allow', 'rb_hourly_mileage_allow', 'rentalbuddy_version');

