<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('https_redirector_settings');
delete_site_option('https_redirector_settings');
delete_option('httprd_settings');
delete_site_option('httprd_settings');

