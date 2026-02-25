-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gwuncomo_title', 'gwuncomo_message', 'gwuncomo_theme_mode', 'gwuncomo_logo_id', 'gwuncomo_enabled', 'gwuncomo_start_datetime', 'gwuncomo_end_datetime', 'gwuncomo_whitelist_ips', 'update_plugins');

