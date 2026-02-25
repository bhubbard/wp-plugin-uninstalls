<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nws_sendy_api_key');
delete_site_option('nws_sendy_api_key');
delete_option('nws_sendy_list_id');
delete_site_option('nws_sendy_list_id');
delete_option('nws_sendy_installation_url');
delete_site_option('nws_sendy_installation_url');
delete_option('nws_sendy_sendy_url');
delete_site_option('nws_sendy_sendy_url');
delete_option('nws_sendy_be_silent');
delete_site_option('nws_sendy_be_silent');

