<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('copyright_year');
delete_site_option('copyright_year');
delete_option('copyright_text');
delete_site_option('copyright_text');

