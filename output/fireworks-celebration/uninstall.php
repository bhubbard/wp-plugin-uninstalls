<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fireworks_active');
delete_site_option('fireworks_active');
delete_option('fireworks_type');
delete_site_option('fireworks_type');
delete_option('fireworks_colors');
delete_site_option('fireworks_colors');
delete_option('fireworks_gifs');
delete_site_option('fireworks_gifs');

