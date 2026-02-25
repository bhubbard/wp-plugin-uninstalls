<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('local_fonts_uploader_css');
delete_site_option('local_fonts_uploader_css');

