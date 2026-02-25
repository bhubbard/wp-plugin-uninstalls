-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooproddel_activation', 'wooproddel_notification', 'wooproddel_date_required', 'wooproddel_checkoutdates', 'wooproddel_min_delivery_time', 'wooproddel_max_delivery_time', 'wooproddel_excluded_dates', 'wooproddel_messages', 'wooproddel_exclude_timeslots', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wooproddel_timeslots', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wooproddel_delivery_date', 'wooproddel_delivery_timeslot');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wooproddel_delivery_date', 'wooproddel_delivery_timeslot');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wooproddel_delivery_date', 'wooproddel_delivery_timeslot');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wooproddel_delivery_date', 'wooproddel_delivery_timeslot');

