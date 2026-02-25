<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rh_hidedash_options');
delete_site_option('rh_hidedash_options');
delete_option('rh_hidedash_links_options');
delete_site_option('rh_hidedash_links_options');
delete_option('rh_insert_php');
delete_site_option('rh_insert_php');

