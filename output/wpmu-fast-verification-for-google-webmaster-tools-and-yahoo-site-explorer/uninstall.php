<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmufastver_google');
delete_site_option('wpmufastver_google');
delete_option('wpmufastver_yahoo');
delete_site_option('wpmufastver_yahoo');
delete_option('wpmufastver_bing');
delete_site_option('wpmufastver_bing');
delete_option('wpmufastver_alexa');
delete_site_option('wpmufastver_alexa');

