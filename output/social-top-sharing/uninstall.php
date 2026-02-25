<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fb');
delete_site_option('fb');
delete_option('fb_width');
delete_site_option('fb_width');
delete_option('fb_height');
delete_site_option('fb_height');
delete_option('fb_colorscheme');
delete_site_option('fb_colorscheme');
delete_option('fb_send');
delete_site_option('fb_send');
delete_option('fb_showfaces');
delete_site_option('fb_showfaces');
delete_option('twitter');
delete_site_option('twitter');
delete_option('socialtopsharing_google');
delete_site_option('socialtopsharing_google');
delete_option('socialtopsharing_diggbutton');
delete_site_option('socialtopsharing_diggbutton');
delete_option('socialtopsharing_linkedin');
delete_site_option('socialtopsharing_linkedin');
delete_option('socialtopsharing_myspace');
delete_site_option('socialtopsharing_myspace');
delete_option('socialtopsharing_reddit');
delete_site_option('socialtopsharing_reddit');
delete_option('socialtopsharing_stumbleupon');
delete_site_option('socialtopsharing_stumbleupon');
delete_option('socialtopsharing_tumblr');
delete_site_option('socialtopsharing_tumblr');
delete_option('socialtopsharing_stumpleupon');
delete_site_option('socialtopsharing_stumpleupon');

