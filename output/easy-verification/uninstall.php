<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easyv_google');
delete_site_option('easyv_google');
delete_option('easyv_yahoo');
delete_site_option('easyv_yahoo');
delete_option('easyv_bing');
delete_site_option('easyv_bing');

