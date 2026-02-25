<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adlhpti_enabled');
delete_site_option('adlhpti_enabled');
delete_option('adlhpti_custom_login_slug');
delete_site_option('adlhpti_custom_login_slug');

