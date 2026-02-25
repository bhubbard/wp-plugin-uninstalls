<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_name');
delete_site_option('custom_name');
delete_option('custom_email');
delete_site_option('custom_email');

