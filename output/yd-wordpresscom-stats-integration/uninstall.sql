-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('YD_WPCSI_last_updated', 'YD_WPCSI_hourly', 'YD_WPCSI_daily');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'yd_views_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'yd_views_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'yd_views_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'yd_views_%';

