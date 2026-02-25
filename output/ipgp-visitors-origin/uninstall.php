<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipgpvo-apikey');
delete_site_option('ipgpvo-apikey');
delete_option('acces_key');
delete_site_option('acces_key');

