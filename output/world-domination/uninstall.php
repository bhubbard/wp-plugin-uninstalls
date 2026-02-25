<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wd_image_toggle');
delete_site_option('wd_image_toggle');
delete_option('world_domination');
delete_site_option('world_domination');

