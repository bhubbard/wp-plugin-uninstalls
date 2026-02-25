<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('secuforoauth_providers');
delete_site_option('secuforoauth_providers');
delete_option('secuforoauth_user_providers');
delete_site_option('secuforoauth_user_providers');
delete_option('secuforoauth_is_installed');
delete_site_option('secuforoauth_is_installed');
delete_option('secuforoauth_is_alone');
delete_site_option('secuforoauth_is_alone');
delete_option('secuforoauth_user_login');
delete_site_option('secuforoauth_user_login');
delete_option('secuforoauth_login_token');
delete_site_option('secuforoauth_login_token');

