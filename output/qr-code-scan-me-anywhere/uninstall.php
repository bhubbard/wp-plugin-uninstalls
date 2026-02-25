<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qr_gplus');
delete_site_option('qr_gplus');
delete_option('qr_twitter');
delete_site_option('qr_twitter');
delete_option('qr_facebook');
delete_site_option('qr_facebook');
delete_option('qr_weibo');
delete_site_option('qr_weibo');
delete_option('qr_youtube');
delete_site_option('qr_youtube');
delete_option('qr_myspace');
delete_site_option('qr_myspace');
delete_option('qr_wordpress');
delete_site_option('qr_wordpress');
delete_option('qr_pinterest');
delete_site_option('qr_pinterest');
delete_option('qr_flickr');
delete_site_option('qr_flickr');
delete_option('qr_linkedin');
delete_site_option('qr_linkedin');
delete_option('qr_delicious');
delete_site_option('qr_delicious');
delete_option('qr_stumbleupon');
delete_site_option('qr_stumbleupon');
delete_option('show_credit');
delete_site_option('show_credit');

