<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vagaro_version');
delete_site_option('vagaro_version');
delete_option('vagaro_page_id');
delete_site_option('vagaro_page_id');

