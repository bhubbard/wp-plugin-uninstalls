<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wgpag_options');
delete_site_option('wgpag_options');
delete_option('wgpag');
delete_site_option('wgpag');

