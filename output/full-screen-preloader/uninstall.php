<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fspl_bg_color');
delete_site_option('fspl_bg_color');
delete_option('fspl_style');
delete_site_option('fspl_style');
delete_option('fspl_image');
delete_site_option('fspl_image');

