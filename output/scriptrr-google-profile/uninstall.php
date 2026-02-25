<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_scriptrr_google_plus_profile_widget');
delete_site_option('widget_scriptrr_google_plus_profile_widget');

