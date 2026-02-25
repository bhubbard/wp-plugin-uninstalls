<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartyads_zones');
delete_site_option('smartyads_zones');
delete_option('smarty_new_key_valid');
delete_site_option('smarty_new_key_valid');
delete_option('smartyads_site_id');
delete_site_option('smartyads_site_id');
delete_option('smartyads_key');
delete_site_option('smartyads_key');
delete_option('smartyads_host');
delete_site_option('smartyads_host');

