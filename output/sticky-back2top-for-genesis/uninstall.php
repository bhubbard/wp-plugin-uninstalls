<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sb2t_color');
delete_site_option('sb2t_color');
delete_option('sb2t_pointer');
delete_site_option('sb2t_pointer');
delete_option('sb2t_location');
delete_site_option('sb2t_location');
delete_option('sb2t_size');
delete_site_option('sb2t_size');
delete_option('sb2t_shape');
delete_site_option('sb2t_shape');
delete_option('sb2t_arrowcolor');
delete_site_option('sb2t_arrowcolor');

