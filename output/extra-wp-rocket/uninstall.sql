-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rocket_extra_gzlaststatic', 'rocket_extra_alert_activation', 'rocket_extra_option_preload', 'rocket_extra_preload_interval', 'rocket_extra_option_preload_interval', 'rocket_extra_option_hideimagify', 'rocket_extra_option_gzlevel', 'rocket_extra_gzlevel', 'rocket_extra_option_gzstatic', 'rocket_extra_gzcron', 'rocket_extra_option_disqus', 'wp_rocket_settings', 'rocket_preload_complete', 'rocket_preload_running');

