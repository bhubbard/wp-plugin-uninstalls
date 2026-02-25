<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('facebook');
delete_site_option('facebook');
delete_option('twitter');
delete_site_option('twitter');
delete_option('instagram');
delete_site_option('instagram');
delete_option('tumblr');
delete_site_option('tumblr');
delete_option('youtube');
delete_site_option('youtube');
delete_option('linkedin');
delete_site_option('linkedin');
delete_option('pinterest');
delete_site_option('pinterest');
delete_option('vine');
delete_site_option('vine');
delete_option('googleplus');
delete_site_option('googleplus');
delete_option('xing');
delete_site_option('xing');
delete_option('github');
delete_site_option('github');
delete_option('flickr');
delete_site_option('flickr');
delete_option('digg');
delete_site_option('digg');
delete_option('dribbble');
delete_site_option('dribbble');
delete_option('icon_color');
delete_site_option('icon_color');

