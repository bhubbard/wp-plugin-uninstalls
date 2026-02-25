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
delete_option('googleplus');
delete_site_option('googleplus');
delete_option('youtube');
delete_site_option('youtube');
delete_option('pinterest');
delete_site_option('pinterest');
delete_option('linkedin');
delete_site_option('linkedin');
delete_option('tumblr');
delete_site_option('tumblr');
delete_option('instagram');
delete_site_option('instagram');
delete_option('flickr');
delete_site_option('flickr');
delete_option('vine');
delete_site_option('vine');
delete_option('soundcloud');
delete_site_option('soundcloud');
delete_option('github');
delete_site_option('github');
delete_option('dribble');
delete_site_option('dribble');
delete_option('behance');
delete_site_option('behance');
delete_option('rss');
delete_site_option('rss');
delete_option('alignment');
delete_site_option('alignment');
delete_option('colour');
delete_site_option('colour');

