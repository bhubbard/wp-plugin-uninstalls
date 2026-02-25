-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ip_statistic_ver', 'ip_statistic_showcounts', 'ip_statistic_savedays', 'ip_statistic_saverows', 'ip_statistic_onlogin', 'ip_statistic_errlogin', 'ip_statistic_showlogin', 'ip_statistic_sav_pas_errlogin', 'ip_statistic_save_pass_ex');

