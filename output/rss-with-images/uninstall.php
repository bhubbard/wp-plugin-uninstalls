<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rwi_encoding');
delete_site_option('rwi_encoding');
delete_option('rwi_width');
delete_site_option('rwi_width');
delete_option('rwi_height');
delete_site_option('rwi_height');

