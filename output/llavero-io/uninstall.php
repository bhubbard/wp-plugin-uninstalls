<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cill_apiurl');
delete_site_option('cill_apiurl');
delete_option('cill_apikey');
delete_site_option('cill_apikey');
delete_option('cill_appid');
delete_site_option('cill_appid');

