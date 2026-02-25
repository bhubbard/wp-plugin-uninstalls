<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('basic_sharer_facebook');
delete_site_option('basic_sharer_facebook');
delete_option('basic_sharer_twitter');
delete_site_option('basic_sharer_twitter');
delete_option('basic_sharer_linkedin');
delete_site_option('basic_sharer_linkedin');
delete_option('basic_sharer_bluesky');
delete_site_option('basic_sharer_bluesky');
delete_option('basic_sharer_whatsapp');
delete_site_option('basic_sharer_whatsapp');

