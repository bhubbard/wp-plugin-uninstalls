<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('virtualjog_cookie_module_domain');
delete_site_option('virtualjog_cookie_module_domain');
delete_option('virtualjog_access_token');
delete_site_option('virtualjog_access_token');
delete_option('virtualjog_cookie_module_script');
delete_site_option('virtualjog_cookie_module_script');
delete_option('virtualjog_cookie_module_enabled');
delete_site_option('virtualjog_cookie_module_enabled');
delete_option('virtualjog_client_data');
delete_site_option('virtualjog_client_data');
delete_option('netjog_virtualjog_alerts');
delete_site_option('netjog_virtualjog_alerts');

