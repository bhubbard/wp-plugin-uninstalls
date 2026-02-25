<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WN_Image_Hover');
delete_site_option('WN_Image_Hover');
delete_option('includeme');
delete_site_option('includeme');

