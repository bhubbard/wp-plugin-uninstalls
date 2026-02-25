<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slbID');
delete_site_option('slbID');
delete_option('slbDisable');
delete_site_option('slbDisable');

