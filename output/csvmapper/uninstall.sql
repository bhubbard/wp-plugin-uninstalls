-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csvm_enable_cron_task', 'csvm_cron_interval', 'csvm_settings');

