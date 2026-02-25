<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('igumbi_hotel_id');
delete_site_option('igumbi_hotel_id');
delete_option('igumbi_language');
delete_site_option('igumbi_language');
delete_option('igumbi_wide');
delete_site_option('igumbi_wide');
delete_option('igumbi_custom_css');
delete_site_option('igumbi_custom_css');
delete_option('igumbi_responsive');
delete_site_option('igumbi_responsive');
delete_option('igumbi_options');
delete_site_option('igumbi_options');

