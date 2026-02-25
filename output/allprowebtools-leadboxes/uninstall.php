<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('APWTAPIKEY');
delete_site_option('APWTAPIKEY');
delete_option('APWTAPIAUTH');
delete_site_option('APWTAPIAUTH');
delete_option('APWT_THIS_VERSION');
delete_site_option('APWT_THIS_VERSION');

