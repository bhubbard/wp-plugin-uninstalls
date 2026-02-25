-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srpp_enable', 'srpp_type', 'srpp_percentage', 'srpp_fixed_amount', 'srpp_min_floor', 'srpp_shipping_only', 'srpp_threshold', 'srpp_reminder_days', 'srpp_enable_reminders');

