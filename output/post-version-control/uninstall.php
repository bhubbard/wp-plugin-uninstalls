<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pvc-list');
delete_site_option('pvc-list');
delete_option('pvc-path');
delete_site_option('pvc-path');

