<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rbu_cancel_force_flash');
delete_site_option('rbu_cancel_force_flash');
delete_option('rbu_resize_quality');
delete_site_option('rbu_resize_quality');
delete_option('rbu_resize_height');
delete_site_option('rbu_resize_height');
delete_option('rbu_resize_width');
delete_site_option('rbu_resize_width');

