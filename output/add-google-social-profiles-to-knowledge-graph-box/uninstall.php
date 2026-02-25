<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gsp_type');
delete_site_option('gsp_type');
delete_option('gsp_facebook');
delete_site_option('gsp_facebook');
delete_option('gsp_instagram');
delete_site_option('gsp_instagram');
delete_option('gsp_twitter');
delete_site_option('gsp_twitter');
delete_option('gsp_google');
delete_site_option('gsp_google');
delete_option('gsp_linkedin');
delete_site_option('gsp_linkedin');
delete_option('gsp_youtube');
delete_site_option('gsp_youtube');
delete_option('gsp_myspace');
delete_site_option('gsp_myspace');
delete_option('gsp_pinterest');
delete_site_option('gsp_pinterest');
delete_option('gsp_soundcloud');
delete_site_option('gsp_soundcloud');
delete_option('gsp_tumblr');
delete_site_option('gsp_tumblr');
delete_option('gsp_name');
delete_site_option('gsp_name');

