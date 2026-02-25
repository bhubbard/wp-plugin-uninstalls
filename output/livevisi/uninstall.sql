-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('livevisi_excluded_ips', 'livevisi_settings', 'livevisi_version');
DELETE FROM wp_options WHERE option_name LIKE 'livevisi_geo_%';

