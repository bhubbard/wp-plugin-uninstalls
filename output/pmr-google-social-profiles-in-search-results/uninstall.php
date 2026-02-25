<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pmr_status');
delete_site_option('pmr_status');
delete_option('pmr_type');
delete_site_option('pmr_type');
delete_option('pmr_name');
delete_site_option('pmr_name');
delete_option('pmr_siteurl');
delete_site_option('pmr_siteurl');
delete_option('pmr_logo');
delete_site_option('pmr_logo');
delete_option('pmr_facebook');
delete_site_option('pmr_facebook');
delete_option('pmr_twitter');
delete_site_option('pmr_twitter');
delete_option('pmr_google');
delete_site_option('pmr_google');
delete_option('pmr_instagram');
delete_site_option('pmr_instagram');
delete_option('pmr_pinterest');
delete_site_option('pmr_pinterest');
delete_option('pmr_youtube');
delete_site_option('pmr_youtube');

