<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('codechief_roles');
delete_site_option('codechief_roles');
delete_option('codechief_profile');
delete_site_option('codechief_profile');
delete_option('codecheif_contact');
delete_site_option('codecheif_contact');
delete_option('codechief_auto_update');
delete_site_option('codechief_auto_update');
delete_option('codecheif_options');
delete_site_option('codecheif_options');
delete_option('codecheif_email_options');
delete_site_option('codecheif_email_options');

