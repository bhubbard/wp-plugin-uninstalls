<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ttck_oauth');
delete_site_option('ttck_oauth');
delete_option('ttck');
delete_site_option('ttck');

