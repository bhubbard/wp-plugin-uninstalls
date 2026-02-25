<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wtlswPhone');
delete_site_option('wtlswPhone');
delete_option('wtl_swcolor');
delete_site_option('wtl_swcolor');
delete_option('wtlswZalo');
delete_site_option('wtlswZalo');

