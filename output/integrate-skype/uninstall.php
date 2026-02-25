<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sky_ids');
delete_site_option('sky_ids');
delete_option('sky_color');
delete_site_option('sky_color');
delete_option('sky_color_bg');
delete_site_option('sky_color_bg');

