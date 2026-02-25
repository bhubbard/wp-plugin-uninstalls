<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cs_user');
delete_site_option('cs_user');
delete_option('cs_api_key');
delete_site_option('cs_api_key');
delete_option('srch_type');
delete_site_option('srch_type');

