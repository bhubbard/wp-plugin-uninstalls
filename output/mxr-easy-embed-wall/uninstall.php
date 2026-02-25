<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mixer_ezembed_options_wall');
delete_site_option('mixer_ezembed_options_wall');
delete_option('mixer_ezembed_appearance_options_wall');
delete_site_option('mixer_ezembed_appearance_options_wall');
delete_option('mixer_ezembed_license_options_wall');
delete_site_option('mixer_ezembed_license_options_wall');

