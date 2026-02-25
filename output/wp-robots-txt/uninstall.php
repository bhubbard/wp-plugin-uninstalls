<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cd_rdte_content');
delete_site_option('cd_rdte_content');
delete_option('robtxt_content');
delete_site_option('robtxt_content');

