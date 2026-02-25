<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('duo_ikey');
delete_site_option('duo_ikey');
delete_option('duo_skey');
delete_site_option('duo_skey');
delete_option('duo_host');
delete_site_option('duo_host');
delete_option('duo_roles');
delete_site_option('duo_roles');
delete_option('duo_xmlrpc');
delete_site_option('duo_xmlrpc');
delete_option('duo_akey');
delete_site_option('duo_akey');

