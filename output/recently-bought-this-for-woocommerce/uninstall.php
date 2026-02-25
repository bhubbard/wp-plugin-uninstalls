<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recently_bought_settings_pnumber');
delete_site_option('recently_bought_settings_pnumber');
delete_option('recently_bought_settings_text');
delete_site_option('recently_bought_settings_text');
delete_option('recently_bought_settings_randomize');
delete_site_option('recently_bought_settings_randomize');
delete_option('recently_bought_settings_corner');
delete_site_option('recently_bought_settings_corner');
delete_option('recently_bought_settings_slide_in_delay');
delete_site_option('recently_bought_settings_slide_in_delay');

