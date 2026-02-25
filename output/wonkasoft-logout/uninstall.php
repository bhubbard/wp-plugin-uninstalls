<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wonkasoft_logout_url');
delete_site_option('wonkasoft_logout_url');
delete_option('wonkasoft_logout_custom_url');
delete_site_option('wonkasoft_logout_custom_url');
delete_option('wonkasoft_login_url');
delete_site_option('wonkasoft_login_url');
delete_option('wonkasoft_login_custom_url');
delete_site_option('wonkasoft_login_custom_url');

