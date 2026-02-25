<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pocet0');
delete_site_option('pocet0');
delete_option('pocet1');
delete_site_option('pocet1');
delete_option('pocet2');
delete_site_option('pocet2');
delete_option('pocet5');
delete_site_option('pocet5');

