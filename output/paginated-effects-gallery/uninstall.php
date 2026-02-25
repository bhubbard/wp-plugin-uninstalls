<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thumbnails_per_page');
delete_site_option('thumbnails_per_page');
delete_option('paginated_links');
delete_site_option('paginated_links');
delete_option('hide_effect');
delete_site_option('hide_effect');
delete_option('show_effect');
delete_site_option('show_effect');
delete_option('effect_speed');
delete_site_option('effect_speed');

