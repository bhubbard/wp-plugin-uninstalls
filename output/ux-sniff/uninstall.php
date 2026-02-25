<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uxsniff_info');
delete_site_option('uxsniff_info');
delete_option('uxsniff_domain');
delete_site_option('uxsniff_domain');

