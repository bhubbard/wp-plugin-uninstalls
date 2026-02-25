<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hafpm_lite_selected_parcel');
delete_site_option('hafpm_lite_selected_parcel');

