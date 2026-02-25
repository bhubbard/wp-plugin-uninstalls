<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_particles_quantity');
delete_site_option('wp_particles_quantity');
delete_option('wp_particles_speed');
delete_site_option('wp_particles_speed');
delete_option('wp_particles_opacity');
delete_site_option('wp_particles_opacity');
delete_option('wp_particles_display_on');
delete_site_option('wp_particles_display_on');

