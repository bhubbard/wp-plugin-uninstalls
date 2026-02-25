<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awber_params_url1');
delete_site_option('awber_params_url1');
delete_option('awber_params_url2');
delete_site_option('awber_params_url2');
delete_option('awber_params_url3');
delete_site_option('awber_params_url3');
delete_option('awber_params_url4');
delete_site_option('awber_params_url4');
delete_option('awber_params_url5');
delete_site_option('awber_params_url5');

