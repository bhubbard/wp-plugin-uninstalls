<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slboxs_options');
delete_site_option('slboxs_options');
delete_option('slboxs_version');
delete_site_option('slboxs_version');

