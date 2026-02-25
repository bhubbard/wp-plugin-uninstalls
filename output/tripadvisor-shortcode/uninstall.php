<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tripadvisor_url');
delete_site_option('tripadvisor_url');
delete_option('tripadvisor_name');
delete_site_option('tripadvisor_name');
delete_option('tripadvisor_id');
delete_site_option('tripadvisor_id');
delete_option('tripadvisor_buff');
delete_site_option('tripadvisor_buff');

