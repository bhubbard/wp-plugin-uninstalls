-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shmc_automation_enabled', 'shmc_automation_interval', 'shmc_automation_start_time', 'shmc_automation_delay_h', 'shmc_automation_delay_m', 'shmc_automation_delay_s');

