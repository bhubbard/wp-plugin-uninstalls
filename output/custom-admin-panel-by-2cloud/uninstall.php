<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom-new-window');
delete_site_option('custom-new-window');
delete_option('custom-facebook');
delete_site_option('custom-facebook');
delete_option('custom-twitter');
delete_site_option('custom-twitter');
delete_option('custom-gplus');
delete_site_option('custom-gplus');
delete_option('custom-linkedin');
delete_site_option('custom-linkedin');
delete_option('custom-pinterest');
delete_site_option('custom-pinterest');
delete_option('custom-android');
delete_site_option('custom-android');
delete_option('custom-appstore');
delete_site_option('custom-appstore');
delete_option('custom-rss');
delete_site_option('custom-rss');
delete_option('custom-tumblr');
delete_site_option('custom-tumblr');
delete_option('custom-yt');
delete_site_option('custom-yt');
delete_option('custom-vimeo');
delete_site_option('custom-vimeo');
delete_option('custom-instagram');
delete_site_option('custom-instagram');
delete_option('custom-logo');
delete_site_option('custom-logo');
delete_option('custom-favicon');
delete_site_option('custom-favicon');
delete_option('custom-css');
delete_site_option('custom-css');
delete_option('custom-js');
delete_site_option('custom-js');
delete_option('custom-enable-js');
delete_site_option('custom-enable-js');
delete_option('custom-enable-css');
delete_site_option('custom-enable-css');

