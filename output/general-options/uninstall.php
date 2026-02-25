<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ad_facebook_link');
delete_site_option('ad_facebook_link');
delete_option('ad_twitter_link');
delete_site_option('ad_twitter_link');
delete_option('ad_skype_link');
delete_site_option('ad_skype_link');
delete_option('ad_google_link');
delete_site_option('ad_google_link');
delete_option('ad_instagram_link');
delete_site_option('ad_instagram_link');
delete_option('ad_contact_number');
delete_site_option('ad_contact_number');
delete_option('ad_address');
delete_site_option('ad_address');
delete_option('ad_map');
delete_site_option('ad_map');
delete_option('image_location');
delete_site_option('image_location');
delete_option('footer_image_location');
delete_site_option('footer_image_location');
delete_option('ad_footer_desc');
delete_site_option('ad_footer_desc');

