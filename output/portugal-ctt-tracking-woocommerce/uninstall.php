<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctt_tracking_email_link_position');
delete_site_option('ctt_tracking_email_link_position');
delete_option('ctt_tracking_allow_users_update');
delete_site_option('ctt_tracking_allow_users_update');
delete_option('ctt_tracking_email_link_type');
delete_site_option('ctt_tracking_email_link_type');

// Delete Transients
delete_transient('webdados_portuguese_postcodes_nag');
delete_site_transient('webdados_portuguese_postcodes_nag');

