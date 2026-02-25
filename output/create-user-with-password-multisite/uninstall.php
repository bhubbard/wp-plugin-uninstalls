<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('welcome_user_email');
delete_site_option('welcome_user_email');
delete_option('cuwp_welcome_user_email');
delete_site_option('cuwp_welcome_user_email');

