<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('amr_breadcrumb_nostyle');
delete_site_option('amr_breadcrumb_nostyle');
delete_option('amr_breadcrumb_nobackground_image');
delete_site_option('amr_breadcrumb_nobackground_image');

