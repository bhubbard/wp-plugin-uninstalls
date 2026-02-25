<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dls_option');
delete_site_option('dls_option');
delete_option('et_divi');
delete_site_option('et_divi');

