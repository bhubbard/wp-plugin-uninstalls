<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('borderedblocks_options');
delete_site_option('borderedblocks_options');
delete_option('borderedblocks_version');
delete_site_option('borderedblocks_version');

