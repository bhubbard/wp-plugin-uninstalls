<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apw_use_css');
delete_site_option('apw_use_css');
delete_option('apw_img_sizes');
delete_site_option('apw_img_sizes');

