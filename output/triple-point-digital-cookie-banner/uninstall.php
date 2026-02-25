<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpd_cb_banner_title');
delete_site_option('tpd_cb_banner_title');
delete_option('tpd_cb_banner_content');
delete_site_option('tpd_cb_banner_content');
delete_option('tpd_cb_accept_text');
delete_site_option('tpd_cb_accept_text');
delete_option('tpd_cb_accept_class');
delete_site_option('tpd_cb_accept_class');
delete_option('tpd_cb_essential_text');
delete_site_option('tpd_cb_essential_text');
delete_option('tpd_cb_essential_class');
delete_site_option('tpd_cb_essential_class');
delete_option('tpd_cb_bg_color');
delete_site_option('tpd_cb_bg_color');
delete_option('tpd_cb_accent_color');
delete_site_option('tpd_cb_accent_color');
delete_option('tpd_cb_text_color');
delete_site_option('tpd_cb_text_color');
delete_option('tpd_cb_ga_enabled');
delete_site_option('tpd_cb_ga_enabled');
delete_option('tpd_cb_ga_id');
delete_site_option('tpd_cb_ga_id');

