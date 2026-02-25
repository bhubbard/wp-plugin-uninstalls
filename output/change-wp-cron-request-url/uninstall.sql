-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('change_wp_cron_domain', 'change_wp_cron_port');

