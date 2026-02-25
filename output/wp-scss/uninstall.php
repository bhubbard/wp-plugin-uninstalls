<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpscss_options');
delete_site_option('wpscss_options');
delete_option('wpscss_version');
delete_site_option('wpscss_version');

