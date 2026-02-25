-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smdps_smdp_btn_frontpage_only', 'smdps_smdp_bckgrd_color', 'smdps_smdp_icn_color', 'smdps_smdp_fnt_color', 'smdps_smdp_btnlink_url', 'smdps_smdp_btnlink_target', 'smdps_smdp_btn_title', 'smdps_smdp_btn_descr', 'smdps_smdp_btn_bottomdist', 'smdps_smdp_btn_bottomdist_mobi', 'smdps_smdp_btn_icn_size', 'smdps_smdp_btn_fa_cls', 'smdps_smdp_btn_icn_topmargin', 'smdps_smdp_btn_leftdistanse', 'smdps_smdp_btn_contntopen', 'smdp_usrrefid', 'smdp_usrcommission');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

