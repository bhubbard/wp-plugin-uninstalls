-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('riveted_report_interval', 'riveted_idle_timeout', 'riveted_noninteraction');

