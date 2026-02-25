<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gumlet_settings');
delete_site_option('gumlet_settings');
delete_option('gumlet_width_from_img');
delete_site_option('gumlet_width_from_img');
delete_option('gumlet_width_from_flex');
delete_site_option('gumlet_width_from_flex');
delete_option('gumlet_min_width');
delete_site_option('gumlet_min_width');

