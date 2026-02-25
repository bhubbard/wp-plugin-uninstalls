<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lba_uid');
delete_site_option('lba_uid');
delete_option('lba_automatic');
delete_site_option('lba_automatic');
delete_option('lba_automatic_add');
delete_site_option('lba_automatic_add');

