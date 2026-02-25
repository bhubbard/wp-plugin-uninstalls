<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aperture_registration_error');
delete_site_option('aperture_registration_error');
delete_option('aperture_registration_success');
delete_site_option('aperture_registration_success');
delete_option('aperture_temporary_code');
delete_site_option('aperture_temporary_code');
delete_option('aperture_microsub_url');
delete_site_option('aperture_microsub_url');

