-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ddos_monitor_urls', 'ddos_monitor_enable_email', 'ddos_monitor_email', 'ddos_monitor_background_running');
DELETE FROM wp_options WHERE option_name LIKE 'ddos_monitor_status_%';

