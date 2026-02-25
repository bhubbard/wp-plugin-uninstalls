<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fp_settings');
delete_site_option('fp_settings');
delete_option('pagegen_channels');
delete_site_option('pagegen_channels');

