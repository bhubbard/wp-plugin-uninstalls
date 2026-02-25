<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autobusal_gjuha');
delete_site_option('autobusal_gjuha');
delete_option('autobusal_appid');
delete_site_option('autobusal_appid');
delete_option('autobusal_appsecret');
delete_site_option('autobusal_appsecret');
delete_option('autobusal_dsg_bgcolor');
delete_site_option('autobusal_dsg_bgcolor');

