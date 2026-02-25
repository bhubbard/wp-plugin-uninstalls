<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wparua_registration_redirect_filter');
delete_site_option('wparua_registration_redirect_filter');
delete_option('wparua_registration_redirect_enable');
delete_site_option('wparua_registration_redirect_enable');

