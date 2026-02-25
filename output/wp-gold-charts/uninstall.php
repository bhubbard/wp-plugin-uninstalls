<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_gold_backlinkurl');
delete_site_option('wp_gold_backlinkurl');
delete_option('wp_gold_backlinktext');
delete_site_option('wp_gold_backlinktext');

