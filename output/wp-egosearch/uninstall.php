<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpes_consumer_key');
delete_site_option('wpes_consumer_key');
delete_option('wpes_consumer_secret');
delete_site_option('wpes_consumer_secret');
delete_option('wpes_dissearched');
delete_site_option('wpes_dissearched');
delete_option('wpes_count');
delete_site_option('wpes_count');

