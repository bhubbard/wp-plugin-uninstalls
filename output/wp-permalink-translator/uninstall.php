<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trans_from');
delete_site_option('trans_from');
delete_option('trans_to');
delete_site_option('trans_to');

