<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lp_ert_words_per_minute');
delete_site_option('lp_ert_words_per_minute');
delete_option('lp_ert_enabled');
delete_site_option('lp_ert_enabled');
delete_option('lp_ert_show_in_homepage');
delete_site_option('lp_ert_show_in_homepage');
delete_option('lp_ert_show_in_archive');
delete_site_option('lp_ert_show_in_archive');
delete_option('lp_ert_css_class');
delete_site_option('lp_ert_css_class');
delete_option('lp_ert_before_text');
delete_site_option('lp_ert_before_text');
delete_option('lp_ert_after_text');
delete_site_option('lp_ert_after_text');

