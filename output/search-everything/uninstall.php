<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('se_options');
delete_site_option('se_options');
delete_option('se_meta');
delete_site_option('se_meta');
delete_option('se_show_we_tried');
delete_site_option('se_show_we_tried');

