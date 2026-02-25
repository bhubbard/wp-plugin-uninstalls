<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eduadmin-thankYouPage');
delete_site_option('eduadmin-thankYouPage');
delete_option('eduadmin-bookingTermsLink');
delete_site_option('eduadmin-bookingTermsLink');

