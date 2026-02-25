<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cryptophoto_publickey');
delete_site_option('cryptophoto_publickey');
delete_option('cryptophoto_privatekey');
delete_site_option('cryptophoto_privatekey');
delete_option('cryptophoto_salt');
delete_site_option('cryptophoto_salt');
delete_option('cryptophoto_server');
delete_site_option('cryptophoto_server');
delete_option('cryptophoto_roles');
delete_site_option('cryptophoto_roles');

