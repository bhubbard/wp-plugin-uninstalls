-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ss_stop_sp_reg_options', 'ss_stop_sp_reg_stats', 'ss_muswitch', 'wordpress_api_key', 'ss_cache', 'ssp_enable_custom_login');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('signup_ip', 'ss_wc_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('signup_ip', 'ss_wc_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('signup_ip', 'ss_wc_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('signup_ip', 'ss_wc_notice_dismissed');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ss_notice_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ss_notice_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ss_notice_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ss_notice_dismissed_%';

