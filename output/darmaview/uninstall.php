<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('darmaview_slider_slides');
delete_site_option('darmaview_slider_slides');
delete_option('darmaview_slider_all_sliders');
delete_site_option('darmaview_slider_all_sliders');

