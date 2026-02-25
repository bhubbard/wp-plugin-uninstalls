<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oras_option_name');
delete_site_option('oras_option_name');
delete_option('oras_api');
delete_site_option('oras_api');
delete_option('oras_languague');
delete_site_option('oras_languague');
delete_option('oras_privacy_link');
delete_site_option('oras_privacy_link');

