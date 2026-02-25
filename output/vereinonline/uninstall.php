<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vereinonline_setting_url');
delete_site_option('vereinonline_setting_url');
delete_option('vereinonline_setting_usr');
delete_site_option('vereinonline_setting_usr');
delete_option('vereinonline_setting_pwd');
delete_site_option('vereinonline_setting_pwd');
delete_option('vereinonline_setting_web');
delete_site_option('vereinonline_setting_web');
delete_option('vereinonline_setting_ath');
delete_site_option('vereinonline_setting_ath');
delete_option('vereinonline_setting_scr');
delete_site_option('vereinonline_setting_scr');
delete_option('vereinonline_setting_api');
delete_site_option('vereinonline_setting_api');

