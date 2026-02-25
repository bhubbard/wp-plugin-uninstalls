<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emmwt_countdown_date');
delete_site_option('emmwt_countdown_date');
delete_option('emmwt_maint_message');
delete_site_option('emmwt_maint_message');
delete_option('emmwt_logo_url');
delete_site_option('emmwt_logo_url');
delete_option('emmwt_enabled');
delete_site_option('emmwt_enabled');

