<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ptsc_html_before');
delete_site_option('ptsc_html_before');
delete_option('ptsc_html_after');
delete_site_option('ptsc_html_after');

