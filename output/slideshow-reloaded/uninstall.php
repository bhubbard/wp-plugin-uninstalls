<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slideshow-reloaded-last-fetch-upsell');
delete_site_option('slideshow-reloaded-last-fetch-upsell');
delete_option('slideshow-reloaded-roles-updated');
delete_site_option('slideshow-reloaded-roles-updated');
delete_option('slideshow_reloaded_upsell_url');
delete_site_option('slideshow_reloaded_upsell_url');
delete_option('slideshow_reloaded_secret_id');
delete_site_option('slideshow_reloaded_secret_id');

