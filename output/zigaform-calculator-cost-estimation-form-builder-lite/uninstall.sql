-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uifmcostest_version', 'zgfm-c-hide_upgrade_notice', 'zgfm-c-install-type', 'zgfm_fields_fastload', 'zgfm_c_activated', 'zgfm_c_modalmode', 'zigaform_c_notice_1', 'zgfm_debug_status', 'zgfm_wpce_code', 'zgfm_listform_searchfilter', 'zgfm_listform_trash', 'zgfm_b_modalmode', 'zgfm_b_hideversion', 'zgfm_listrecords_searchfilter', 'zgfm_frm_main_recexpdelimiter', 'styles_google_fonts');

