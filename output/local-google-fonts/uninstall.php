<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('local_google_fonts');
delete_site_option('local_google_fonts');
delete_option('local_google_fonts_buffer');
delete_site_option('local_google_fonts_buffer');

