<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('configure_hotjar_option_name');
delete_site_option('configure_hotjar_option_name');

