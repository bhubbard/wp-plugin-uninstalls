<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Smsfunctions_debug');
delete_site_option('Smsfunctions_debug');
delete_option('Smsfunctions_provider');
delete_site_option('Smsfunctions_provider');

