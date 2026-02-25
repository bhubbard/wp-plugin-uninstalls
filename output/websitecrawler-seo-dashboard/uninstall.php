<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbstcrlrsdb-token');
delete_site_option('wbstcrlrsdb-token');
delete_option('wbstcrlrsdb-last-response');
delete_site_option('wbstcrlrsdb-last-response');
delete_option('wbstcrlrsdb-api-key');
delete_site_option('wbstcrlrsdb-api-key');

