<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uifmcostest_version');
delete_site_option('uifmcostest_version');
delete_option('zgfm-c-hide_upgrade_notice');
delete_site_option('zgfm-c-hide_upgrade_notice');
delete_option('zgfm-c-install-type');
delete_site_option('zgfm-c-install-type');
delete_option('zgfm_fields_fastload');
delete_site_option('zgfm_fields_fastload');
delete_option('zgfm_c_activated');
delete_site_option('zgfm_c_activated');
delete_option('zgfm_c_modalmode');
delete_site_option('zgfm_c_modalmode');
delete_option('zigaform_c_notice_1');
delete_site_option('zigaform_c_notice_1');
delete_option('zgfm_debug_status');
delete_site_option('zgfm_debug_status');
delete_option('zgfm_wpce_code');
delete_site_option('zgfm_wpce_code');
delete_option('zgfm_listform_searchfilter');
delete_site_option('zgfm_listform_searchfilter');
delete_option('zgfm_listform_trash');
delete_site_option('zgfm_listform_trash');
delete_option('zgfm_b_modalmode');
delete_site_option('zgfm_b_modalmode');
delete_option('zgfm_b_hideversion');
delete_site_option('zgfm_b_hideversion');
delete_option('zgfm_listrecords_searchfilter');
delete_site_option('zgfm_listrecords_searchfilter');
delete_option('zgfm_frm_main_recexpdelimiter');
delete_site_option('zgfm_frm_main_recexpdelimiter');

// Delete Transients
delete_transient('styles_google_fonts');
delete_site_transient('styles_google_fonts');

