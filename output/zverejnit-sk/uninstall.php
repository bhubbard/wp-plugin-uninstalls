<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pinf_zverejnit_uid');
delete_site_option('pinf_zverejnit_uid');
delete_option('pinf_zverejnit_secret');
delete_site_option('pinf_zverejnit_secret');

