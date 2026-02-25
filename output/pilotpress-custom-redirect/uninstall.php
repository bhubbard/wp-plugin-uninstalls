<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pilotpress_custom_redirect');
delete_site_option('pilotpress_custom_redirect');

