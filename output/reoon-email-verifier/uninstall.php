<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reoonev-settings');
delete_site_option('reoonev-settings');
delete_option('evf_validation_error');
delete_site_option('evf_validation_error');

