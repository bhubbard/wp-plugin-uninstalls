<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('link');
delete_site_option('link');
delete_option('twittername');
delete_site_option('twittername');
delete_option('fanpageid');
delete_site_option('fanpageid');
delete_option('fanpagename');
delete_site_option('fanpagename');
delete_option('displaytypes');
delete_site_option('displaytypes');
delete_option('icons');
delete_site_option('icons');
delete_option('monthlyvisitors');
delete_site_option('monthlyvisitors');
delete_option('viperproof_followers');
delete_site_option('viperproof_followers');
delete_option('viperproof_followers_update');
delete_site_option('viperproof_followers_update');
delete_option('viperproof_last_twitterer');
delete_site_option('viperproof_last_twitterer');

