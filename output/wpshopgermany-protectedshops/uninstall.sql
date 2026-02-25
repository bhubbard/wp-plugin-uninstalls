-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsg_installed', 'wpshopgermany_ts_auto', 'wpshopgermany_ts_shopid', 'wpsg_ps_cron', 'cron', 'mod_ps');
DELETE FROM wp_options WHERE option_name LIKE 'wpshopgermany_ts_version_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpshopgermany_ts_time_%';

