-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uifmfbuild_version', 'zgfm-b-hide_upgrade_notice', 'zgfm-b-install-type', 'zgfm_fields_fastload', 'zgfm_b_activated', 'zgfm_b_modalmode', 'zigaform_f_notice_1', 'zgfm_wpfb_code', 'zgfm_listform_searchfilter', 'zgfm_listform_trash', 'zgfm_b_hideversion', 'zgfm_listrecords_searchfilter', 'zgfm_frm_main_recexpdelimiter', 'styles_google_fonts');

