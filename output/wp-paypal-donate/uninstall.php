<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpd-saved-forms');
delete_site_option('wpd-saved-forms');
delete_option('wpd_widget');
delete_site_option('wpd_widget');

