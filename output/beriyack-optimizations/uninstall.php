<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beriyack_optimizations_settings');
delete_site_option('beriyack_optimizations_settings');

