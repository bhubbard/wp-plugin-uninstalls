<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wvr_remove_css');
delete_site_option('wvr_remove_css');
delete_option('wvr_remove_script');
delete_site_option('wvr_remove_script');
delete_option('wvr_remove_generator');
delete_site_option('wvr_remove_generator');

