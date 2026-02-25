-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pause_shop_periodicity', 'pause_shop_begin_date', 'pause_shop_timezone', 'pause_shop_scheduled_pause_enabled', 'pause_shop_begin_time', 'pause_shop_end_time', 'pause_shop_on_demand_paused', 'pause_shop_schedule_paused');

