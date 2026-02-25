-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vmerf_version', 'vmerf_htaccess', 'vmerf_htaccess_warning', 'vmerf_banned_ips', 'vmerf_banned_referers', 'vmerf_auto_update', 'vmerf_auto_update_time', 'vmerf_referers', 'vmerf_htbackup', 'vmerf_wp_version', 'vmerf_settings');

