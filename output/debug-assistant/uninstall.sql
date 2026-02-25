-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cron', 'show_on_front ', 'imlt_track_user', 'imtl_test_speed_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('set_cron_time_tmp_admin', 'tmp_admin_psw');
DELETE FROM wp_usermeta WHERE meta_key IN ('set_cron_time_tmp_admin', 'tmp_admin_psw');
DELETE FROM wp_termmeta WHERE meta_key IN ('set_cron_time_tmp_admin', 'tmp_admin_psw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('set_cron_time_tmp_admin', 'tmp_admin_psw');

