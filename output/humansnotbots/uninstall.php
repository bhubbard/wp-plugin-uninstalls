<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('replacement_method');
delete_site_option('replacement_method');
delete_option('innerhtml');
delete_site_option('innerhtml');
delete_option('dom');
delete_site_option('dom');

