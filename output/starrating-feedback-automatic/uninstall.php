<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yelp-url');
delete_site_option('yelp-url');
delete_option('facebook-url');
delete_site_option('facebook-url');
delete_option('display-page');
delete_site_option('display-page');
delete_option('display-post');
delete_site_option('display-post');
delete_option('yelp-key');
delete_site_option('yelp-key');
delete_option('site_img');
delete_site_option('site_img');
delete_option('site_title');
delete_site_option('site_title');
delete_option('site_phone');
delete_site_option('site_phone');
delete_option('site_streetaddr');
delete_site_option('site_streetaddr');
delete_option('site_cityaddr');
delete_site_option('site_cityaddr');
delete_option('site_stateaddr');
delete_site_option('site_stateaddr');
delete_option('site_postaladdr');
delete_site_option('site_postaladdr');
delete_option('fb-rating');
delete_site_option('fb-rating');
delete_option('fb-count');
delete_site_option('fb-count');
delete_option('yelp-rating');
delete_site_option('yelp-rating');
delete_option('yelp-count');
delete_site_option('yelp-count');

