-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_cron_plugin', 'tools_page_cron_table_per_page', 'simple_cron_installed', 'simple_security_nag', 'simple_cron_nag');

