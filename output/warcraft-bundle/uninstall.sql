-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_force_locale', 'wb_force_utf8', 'wb_cache_time', 'wb_guild_name', 'wb_realm_name', 'wb_guild_rank', 'wb_gm_name', 'wb_active_tool', 'wb_calendar_alert', 'wb_utc');

