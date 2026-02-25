<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xc_options');
delete_site_option('xc_options');
delete_option('xc_pro_options');
delete_site_option('xc_pro_options');

// Delete Transients
delete_transient('_xllentech_calendar_activation_redirect');
delete_site_transient('_xllentech_calendar_activation_redirect');

