<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('floating_social_display_side');
delete_site_option('floating_social_display_side');
delete_option('whatsapp_contact_number');
delete_site_option('whatsapp_contact_number');
delete_option('youtube_channel_url');
delete_site_option('youtube_channel_url');
delete_option('facebook_username');
delete_site_option('facebook_username');
delete_option('twitter_username');
delete_site_option('twitter_username');
delete_option('instagram_username');
delete_site_option('instagram_username');

